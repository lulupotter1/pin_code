import 'package:pin_code/utils/template.dart';

class ThemeTextRegular {
  static const fontWeight = FontWeight.w400;
  static const fontFamily = "RobotoRegular";
  static const fontColor = ThemeColors.black87;

  static const size24 = TextStyle(
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
    fontSize: 24.0,
  );
}

class ThemeTextLight {
  static const fontWeight = FontWeight.w300;
  static const fontFamily = "RobotoLight";
  static const fontColor = ThemeColors.black87;

  static const size34 = TextStyle(
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
    fontSize: 34.0,
  );
}
