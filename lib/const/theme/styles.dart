import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class Styles {
  static ThemeData get light => lightTheme;

  static ThemeData get dark => darkTheme;

  static void toggleTheme() {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
  }

  ///Colors.
  static const primaryColor = Color(0xff54c5eb);

  //White.
  static const white1 = Color(0xffF5F5F5);
  static const white2 = Color(0xffE7ECF1);
  static const white3 = Color(0xffF2F2FA);
  static const white4 = Color(0xffE5E5E5);
  static const white5 = Color(0xffF4F9FA);
  static const white6 = Color(0xffDFE0EB);
  static const white7 = Color(0xffE9ECEF);
  static const white8 = Color(0xffD4D4DB);
  static const white9 = Color(0xffF4F4F4);
  static const white10 = Color(0xffC4C4C4);
  static const white11 = Color(0xffEDEDFF);
  static const white12 = Color(0xffF1FDFF);
  static const white13 = Color(0xffF4F8FA);
  static const white14 = Color(0xffe7e9ef);
  static const white15 = Color(0xffF2f2f2);
  static const white16 = Color(0xffe0e0e0);
  static const white17 = Color(0xffE9E9EA);
  static const white18 = Color(0xffF3F9FF);

  //Grey.
  static const grey1 = Color(0xffC1C9D2);
  static const grey2 = Color(0xffBBBBBB);
  static const grey3 = Color(0xffACACAC);
  static const grey4 = Color(0xff979797);
  static const grey5 = Color(0xff6D6D6D);
  static const grey6 = Color(0xff6B7280);
  static const grey7 = Color(0xff7B8794);
  static const grey8 = Color(0xffA3AED0);
  static const grey9 = Color(0xff9FA2B4);
  static const grey10 = Color(0xff8E8EA1);
  static const grey11 = Color(0xff4B506D);
  static const grey12 = Color(0xff7A7C80);
  static const grey13 = Color(0xffC5C7CD);
  static const grey14 = Color(0xffA7A7AB);
  static const grey15 = Color(0xffCAD1D8);
  static const grey16 = Color(0xffD3D3D5);
  static const grey17 = Color(0xff86869E);
  static const grey18 = Color(0xff757575);
  static const grey19 = Color(0xff757880);
  static const grey20 = Color(0xffdadfe4);

  //Black.
  static const black1 = Color(0xff252733);
  static const black2 = Color(0xff22242C);
  static const black3 = Color(0xff323F4B);
  static const black4 = Color(0xff4E5056);
  static const black5 = Color(0xff0F123F);
  static const black6 = Color(0xff0A093D);

  //Blue.
  static const blue0 = Color(0xff54c5eb);
  static const blue1 = Color(0xffEFF8FF);
  static const blue2 = Color(0xffC9ECF3);
  static const blue3 = Color(0xff77E6F7);
  static const blue4 = Color(0xff20c7e0);
  static const blue5 = Color(0xff06BDD9);
  static const blue6 = Color(0xff00C3F9);
  static const blue7 = Color(0xff0FAFE4);
  static const blue8 = Color(0xffd9f3fb);
  static const blue9 = Color(0xff3AD0FF);
  static const blue10 = Color(0xffd9f2fb);
  static const blue11 = Color(0xffDEEFFE);
  static const blue12 = Color(0xffDBE2FB);
  static const blue13 = Color(0xffE6F6FB);
  static const blue14 = Color(0xff33CFFA);
  static const blue15 = Color(0xffE6F9FE);
  static const blue16 = Color(0xff33cffa);

  //Red.
  static const red1 = Color(0xffFFDBDB);
  static const red2 = Color(0xffFF4A55);
  static const red3 = Color(0xffF41941);
  static const red4 = Color(0xffFF1414);
  static const red5 = Color(0xffF15642);
  static const red6 = Color(0xffFFDBDD);
  static const red7 = Color(0xffFFE8E9);
  static const red8 = Color(0xffFFE7F5);

  //Purple.
  static const purple1 = Color(0xff6160DC);
  static const purple2 = Color(0xff1C49E9);
  static const purple3 = Color(0xff4A50E2);
  static const purple4 = Color(0xff6485FC);
  static const purple5 = Color(0xffDEDFFF);
  static const purple6 = Color(0xff9296EE);
  static const purple7 = Color(0xff6E73E8);
  static const purple8 = Color(0xffEAF6EE);
  static const purple9 = Color(0xffE8EDFD);

  //Green.
  static const green1 = Color(0xffDBFFFF);
  static const green2 = Color(0xff20C2C4);
  static const green3 = Color(0xffF5F7F9);
  static const green4 = Color(0xffF6F8FB);
  static const green5 = Color(0xffCCF3FE);
  static const green6 = Color(0xff2FA950);
  static const green7 = Color(0xffe6f9fd);

  //Yellow.
  static const yellow = Color(0xffFFAF2E);
  static const yellow1 = Color(0xffFCD405);
  static const yellow2 = Color(0xffFFFBDC);
  static const yellow3 = Color(0xffFFD898);
  static const yellow4 = Color(0xffFFB74A);
  static const yellow5 = Color(0xffff9800);
  static const yellow6 = Color(0xffFFE7D7);
  static const yellow7 = Color(0xffFFECDF);
  static const yellow8 = Color(0xffFFEFD5);
  static const yellow9 = Color(0xffFD8538);
  static const yellow10 = Color(0xffFFD085);
  static const yellow11 = Color(0xffFFEDD2);

  //Pink.
  static const pink = Color(0xffF028A0);
  static const pink1 = Color(0xffFCD4EC);
  static const pink2 = Color(0xffFFF3EB);

  ///TextStyles.
  //Small.
  static TextStyle smallText({Color color = black2}) =>
      TextStyle(color: color, fontSize: 12.sp, fontWeight: FontWeight.normal);

  static TextStyle smallTextW500({Color color = black2}) =>
      TextStyle(color: color, fontSize: 12.sp, fontWeight: FontWeight.w500);

  static TextStyle smallTextW600({Color color = black2}) =>
      TextStyle(color: color, fontSize: 12.sp, fontWeight: FontWeight.w600);

  static TextStyle smallTextW700({Color color = black2}) =>
      TextStyle(color: color, fontSize: 12.sp, fontWeight: FontWeight.w700);

  static TextStyle smallTextW800({Color color = black2}) =>
      TextStyle(color: color, fontSize: 12.sp, fontWeight: FontWeight.w800);

  static TextStyle smallTextW900({Color color = black2}) =>
      TextStyle(color: color, fontSize: 12.sp, fontWeight: FontWeight.w900);

  //Normal.
  static TextStyle normalText({Color color = black2, double size = 14}) =>
      TextStyle(color: color, fontSize: size.sp, fontWeight: FontWeight.normal);

  static TextStyle normalTextW500({Color color = black2, double size = 14}) =>
      TextStyle(color: color, fontSize: size.sp, fontWeight: FontWeight.w500);

  static TextStyle normalTextW600({Color color = black2, double size = 14}) =>
      TextStyle(color: color, fontSize: size.sp, fontWeight: FontWeight.w600);

  static TextStyle normalTextW700({Color color = black2, double size = 14}) =>
      TextStyle(color: color, fontSize: size.sp, fontWeight: FontWeight.w700);

  static TextStyle normalTextW800({Color color = black2, double size = 14}) =>
      TextStyle(color: color, fontSize: size.sp, fontWeight: FontWeight.w800);

  static TextStyle normalTextW900({Color color = black2, double size = 14}) =>
      TextStyle(color: color, fontSize: size.sp, fontWeight: FontWeight.w900);

  //Medium.
  static TextStyle mediumText({Color color = black2}) =>
      TextStyle(color: color, fontSize: 16.sp, fontWeight: FontWeight.normal);

  static TextStyle mediumTextW500({Color color = black2}) =>
      TextStyle(color: color, fontSize: 16.sp, fontWeight: FontWeight.w500);

  static TextStyle mediumTextW600({Color color = black2}) =>
      TextStyle(color: color, fontSize: 16.sp, fontWeight: FontWeight.w600);

  static TextStyle mediumTextW700({Color color = black2}) =>
      TextStyle(color: color, fontSize: 16.sp, fontWeight: FontWeight.w700);

  static TextStyle mediumTextW800({Color color = black2}) =>
      TextStyle(color: color, fontSize: 16.sp, fontWeight: FontWeight.w800);

  static TextStyle mediumTextW900({Color color = black2}) =>
      TextStyle(color: color, fontSize: 16.sp, fontWeight: FontWeight.w900);

  //Big.
  static TextStyle bigText({Color color = black2}) =>
      TextStyle(color: color, fontSize: 18.sp, fontWeight: FontWeight.normal);

  static TextStyle bigTextW500({Color color = black2}) =>
      TextStyle(color: color, fontSize: 18.sp, fontWeight: FontWeight.w500);

  static TextStyle bigTextW600({Color color = black2}) =>
      TextStyle(color: color, fontSize: 18.sp, fontWeight: FontWeight.w600);

  static TextStyle bigTextW700({Color color = black2}) =>
      TextStyle(color: color, fontSize: 18.sp, fontWeight: FontWeight.w700);

  static TextStyle bigTextW800({Color color = black2}) =>
      TextStyle(color: color, fontSize: 18.sp, fontWeight: FontWeight.w800);

  static TextStyle bigTextW900({Color color = black2}) =>
      TextStyle(color: color, fontSize: 18.sp, fontWeight: FontWeight.w900);

  static TextStyle textExpand({Color color = black2, double size = 14}) =>
      TextStyle(
        fontFamily: GoogleFonts.mulish().fontFamily,
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: size.sp,
      );

  static TextStyle textUnderline({Color color = black2, double size = 14}) =>
      TextStyle(
        fontFamily: GoogleFonts.mulish().fontFamily,
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: size.sp,
        decoration: TextDecoration.underline,
      );

  //Styles DropdownBelow.
  static TextStyle textDropdown({Color color = black2, double size = 14}) =>
      TextStyle(
        fontFamily: GoogleFonts.mulish().fontFamily,
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: size.sp,
      );

  static TextStyle textDropdown2({Color color = black2, double size = 14}) =>
      TextStyle(
        fontFamily: GoogleFonts.mulish().fontFamily,
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: size,
      );

  static TextStyle hintTextDropdown({Color color = black2, double size = 14}) =>
      TextStyle(
        fontFamily: GoogleFonts.mulish().fontFamily,
        fontWeight: FontWeight.normal,
        color: color,
        fontSize: size.sp,
      );

  ///Border TextField.
  static OutlineInputBorder inputBorder30(
      {Color color = grey10, double radius = 30}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide: BorderSide(color: color, width: 1),
    );
  }

  static OutlineInputBorder inputBorder8({Color color = grey10}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color, width: 0.5),
    );
  }

  ///Border Dialog.
  static OutlinedBorder borderDialog({double radius = 8}) {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius));
  }

  ///Box shadow.
  //0px 4px 8px rgba(0, 0, 0, 0.15);
  static List<BoxShadow> boxShadow1() {
    return [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.15),
        blurRadius: 8,
        offset: Offset(0, 4),
      ),
    ];
  }
  //0px 4px 8px rgba(0, 0, 0, 0.08);
  static List<BoxShadow> boxShadow2() {
    return [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.08),
        blurRadius: 8,
        offset: Offset(0, 4),
      ),
    ];
  }

  //0px -2px 20px rgba(0, 0, 0, 0.1);
  static List<BoxShadow> boxShadow3() {
    return [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 20,
        spreadRadius: 4,
        offset: Offset(0, -2),
      ),
    ];
  }

  //-4px -4px 12px rgba(0, 0, 0, 0.15);
  static List<BoxShadow> boxShadow4() {
    return [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.15),
        blurRadius: 12,
        offset: Offset(-4, -4),
      ),
    ];
  }

  //0px 4px 15px rgba(0, 0, 0, 0.2);
  static List<BoxShadow> boxShadow5() {
    return [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.2),
        blurRadius: 15,
        offset: Offset(0, 4),
      ),
    ];
  }

  //0px 4px 8px rgba(0, 0, 0, 0.25);
  static List<BoxShadow> boxShadow6() {
    return [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.25),
        blurRadius: 8,
        offset: Offset(0, 4),
      ),
    ];
  }

  //0px 4px 20px rgba(0, 0, 0, 0.15);
  static List<BoxShadow> boxShadow7() {
    return [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.15),
        blurRadius: 20,
        offset: Offset(0, 4),
      ),
    ];
  }

  static List<BoxShadow> boxShadow8() {
    return [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.15),
        blurRadius: 4,
        offset: Offset(0, 1),
      ),
    ];
  }

  static List<BoxShadow> boxShadow9() {
    return [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.15),
        blurRadius: 12,
        offset: Offset(1, 2),
      ),
    ];
  }

  ///BoxDecoration.
  static BoxDecoration boxDecoration1() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    );
  }

  static BoxDecoration boxDecoration2() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    );
  }

  static BoxDecoration boxDecoration3() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: boxShadow4(),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    );
  }

  static BoxDecoration boxDecoration4() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: boxShadow4(),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
      ),
    );
  }

  static BoxDecoration boxDecoration5() {
    return BoxDecoration(
      border: Border.all(width: 1, color: black2),
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
      boxShadow: Styles.boxShadow1(),
    );
  }

  static BoxDecoration boxDecoration6() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: boxShadow9(),
      borderRadius: const BorderRadius.all(Radius.circular(4)),
    );
  }

  static BoxDecoration boxDecorationSheet() {
    return const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    );
  }

  static BoxDecoration boxDecorationSearch() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: Styles.boxShadow1(),
    );
  }

  static BoxDecoration boxDecorationSelect({Color color = grey12}) {
    return BoxDecoration(
      color: Colors.white,
      border: Border.all(width: 0.5, color: color),
      borderRadius: BorderRadius.circular(8),
    );
  }

  static BoxDecoration boxDecorationActive(
      {Color color = blue13, Color borderColor = blue6}) {
    return BoxDecoration(
      border: Border.all(width: 1, color: borderColor),
      borderRadius: BorderRadius.circular(4),
      color: color,
      boxShadow: Styles.boxShadow9(),
    );
  }
}
