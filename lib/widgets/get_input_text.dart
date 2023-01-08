import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '/const/import_const.dart';

enum ValidationPlace { focus, change, manual }

class GetInputTextConfig extends GetxController {
  final String? label;
  final String? hint;
  final int? maxLength;

  final bool showCounter;
  final bool isPassword;
  final bool enabled;
  final bool readOnly;
  final bool isBold;

  final Function(String)? onValidate;

  final InputBorder enabledBorder;
  final InputBorder focusedBorder;
  final InputBorder errorBorder;
  final InputBorder focusedErrorBorder;

  final ValidationPlace validationPlace;

  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final List<TextInputFormatter>? inputFormatters;

  GetInputTextConfig({
    this.label,
    this.hint,
    this.maxLength,
    this.showCounter = false,
    this.isPassword = false,
    this.enabled = true,
    this.readOnly = false,
    this.onValidate,
    required this.focusedBorder,
    required this.enabledBorder,
    required this.errorBorder,
    required this.focusedErrorBorder,
    this.validationPlace = ValidationPlace.manual,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.inputFormatters,
    this.isBold = false,
  }) {
    obscureText = isPassword;
  }

  FocusNode focus = FocusNode();

  bool get hasFocus => focus.hasFocus;

  TextEditingController controller = TextEditingController();

  bool clearErrorOnFocus = true;
  bool clearErrorOnTyping = true;

  static bool _isValid(String val) {
    return val.isNotEmpty;
  }

  void focusNode() {
    Get.focusScope!.requestFocus(focus);
  }

  //Check change icon password.
  bool obscureText = false;

  String get value {
    return controller.text;
  }

  set value(String val) {
    if (val == controller.text) return;
    controller.text = val;
  }

  @override
  void onInit() {
    super.onInit();
    if (initialized) return;
    focus.addListener(_handleFocus);
    controller.addListener(_handleTextChange);
  }

  String _value = '';

  void _handleTextChange() {
    var val = controller.text;
    if (val == _value) return;
    _value = val;
    if (onChanged != null) onChanged!(_value);
    if (validationPlace == ValidationPlace.change ||
        validationPlace == ValidationPlace.focus) {
      validate();
    } else {
      if (clearErrorOnTyping) error = '';
    }
  }

  void _handleFocus() {
    if (onFocus != null) onFocus!(hasFocus);
    if (!hasFocus) {
      if (validationPlace == ValidationPlace.focus) {
        validate();
      }
    } else {
      if (!hasError && clearErrorOnFocus) {
        error = '';
      }
    }
  }

  bool validate() {
    if (onValidate != null) {
      error = onValidate!(value);
    }
    return hasError;
  }

  bool get hasError => error.isEmpty;

  String get error => _error;

  set error(String val) {
    if (_error == val) return;
    _error = val;
    update();
  }

  String? get _actualErrorText {
    return !_isValid(_error) ? null : _error.tr;
  }

  String _error = '';

  Function(String)? onChanged;
  Function(bool)? onFocus;
  Function()? onTap;

  bool _disposed = false;

  bool get disposed => _disposed;

  @override
  void onClose() {
    if (_clients.isNotEmpty) return;
    if (_disposed) return;
    _disposed = true;
    controller.removeListener(_handleTextChange);
    focus.removeListener(_handleFocus);
    focus.unfocus();
    debugPrint('disposed-getInputText');
    // focus?.dispose();
    // controller?.dispose();
    super.onClose();
  }

  Widget getSuffix() {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        obscureText = !obscureText;
        update();
      },
      child: Icon(
        obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
        color: Styles.grey10,
      ).paddingOnly(right: 10),
    );
  }

  /// Required if multiple `GetInputText` consume the same TextConfig.
  final Set<State> _clients = {};

  void _addClient(State value) => _clients.add(value);

  void _removeClient(State value) => _clients.remove(value);
}

class GetInputText extends StatelessWidget {
  final GetInputTextConfig config;
  final bool autoRemoveConfig;
  final Key? textKey;

  const GetInputText({
    Key? key,
    this.textKey,
    required this.config,
    this.autoRemoveConfig = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: config,
      global: false,
      autoRemove: true,
      initState: config._addClient,
      dispose: (state) {
        config._removeClient(state);
        if (autoRemoveConfig && !config.disposed) {
          config.onClose();
        }
      },
      assignId: true,
      builder: (_) {
        return SizedBox(
          height: 75.sp,
          child: TextField(
            key: textKey,
            controller: config.controller,
            onTap: config.onTap,
            focusNode: config.focus,
            style: TextStyle(
              color: Styles.black2,
              fontSize: 16.sp,
              fontWeight: (config.isBold) ? FontWeight.bold : FontWeight.normal,
            ),
            obscureText: config.obscureText,
            keyboardType: config.keyboardType,
            maxLength: config.maxLength,
            textInputAction: config.textInputAction,
            inputFormatters: config.inputFormatters,
            enabled: config.enabled,
            readOnly: config.readOnly,
            decoration: InputDecoration(
              labelText: config.label,
              hintText: config.hint!.tr,
              hintStyle: Styles.normalText(color: Styles.grey1),
              border: config.enabledBorder,
              enabledBorder: config.enabledBorder,
              focusedBorder: config.focusedBorder,
              errorBorder: config.errorBorder,
              focusedErrorBorder: config.focusedErrorBorder,
              contentPadding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
              alignLabelWithHint: true,
              errorText: config._actualErrorText,
              errorStyle: const TextStyle(color: Colors.red),
              errorMaxLines: 2,
              counterText: config.showCounter ? null : '',
              suffixIconConstraints:
                  const BoxConstraints(minHeight: 24, minWidth: 40),
              suffixIcon: config.isPassword ? config.getSuffix() : null,
            ),
          ),
        );
      },
    );
  }
}
