import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/instance_manager.dart';

import '/services/storage/storage_service.dart';
import '/utils/app_utils.dart';

const domainTest = 'https://mdo-staging.bssd.vn/api/';
final _store = Get.find<StorageService>();

class BaseApi {
  late Dio dio;

  interceptors() async {
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      if (validateSessionTimeout(options.path)) {
        return handler.next(options);
      }
    }, onResponse: (response, handler) async {
      if (!kReleaseMode) {
        debugPrint('=================================================\n');
        debugPrint('METHOD: ${response.requestOptions.method}');
        debugPrint('REQUEST: ${response.requestOptions.uri}');
        debugPrint('PARAMS: ${response.requestOptions.data}');
        debugPrint('HEADER: ${response.requestOptions.headers}');
        debugPrint('RESPONSE: ${jsonEncode(response.data)}');
        debugPrint('=================================================\n');
      }

      return handler.next(response);
    }, onError: (DioError e, handler) {
      debugPrint('=================================================\n');
      debugPrint('ERROR: ${e.message}');
      debugPrint('=================================================\n');
      return handler.next(e); //continue
    }));
  }

  validateSessionTimeout(String path) {
    bool isAuth = path.contains('generateCaptcha') ||
        path.contains('login') ||
        path.contains('forget-password') ||
        path.contains('renew-verification-code') ||
        path.contains('loginByEmailAndCode') ||
        path.contains('global-app-notification');

    if (!isAuth) {
      //Case: logged out.
      if (_store.sessionTimeout.isEmpty) return false;
      bool isValidateSessionTimeout = AppUtils.validateSessionTimeout();
      if (!isValidateSessionTimeout) {
        AppUtils.logout();
        AppUtils.showError('msg_session_timeout'.tr);
        return false;
      }
    }

    return true;
  }

  Future<void> init() async {
    dio = Dio(
      BaseOptions(
        baseUrl: domainTest,
        headers: {'content-type': 'application/json'},
        connectTimeout: 120 * 1000,
        receiveTimeout: 120 * 1000,
        sendTimeout: 120 * 1000, // 120s
      ),
    );
    await interceptors();
  }

  void settingHeaderRequest(String token) {
    if (token.isNotEmpty) {
      dio.options.headers['Authorization'] = 'Bearer $token';
    }
    dio.options.headers['domain'] = _store.companyCode;
    dio.options.responseType = ResponseType.json;
    dio.options.contentType = 'application/json';

    //Check lang code.
    String localeCode = _store.language.split('_')[0];
    dio.options.headers['Accept-Language'] = localeCode;
  }

  Future<Response?> getRequest(
      {required String url, String token = '', var data}) async {
    try {
      settingHeaderRequest(token);
      if (data != null) return await dio.get(url, queryParameters: data);
      return await dio.get(url);
    } on DioError catch (e) {
      if (e.response != null) return e.response;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<Response?> postRequest(
      {required String url, String token = '', required String data}) async {
    try {
      settingHeaderRequest(token);
      return await dio.post(url, data: data);
    } on DioError catch (e) {
      if (e.response != null) return e.response;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<Response?> putRequest(
      {required String url, String token = '', required String data}) async {
    try {
      settingHeaderRequest(token);
      return await dio.put(url, data: data);
    } on DioError catch (e) {
      if (e.response != null) return e.response;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<Response?> deleteRequest(
      {required String url, String token = ''}) async {
    try {
      settingHeaderRequest(token);
      return await dio.delete(url);
    } on DioError catch (e) {
      if (e.response != null) return e.response;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
