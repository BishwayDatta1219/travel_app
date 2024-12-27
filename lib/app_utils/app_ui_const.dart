import 'package:flutter/material.dart';
import 'package:travel_app/app_utils/app_sizes.dart';

class AppUIConst {
  static const Color purpleBackgroundColor = Color(0xFF3b2a54);
  static const Color whiteColor = Color(0xFFffffff);
  static const Color airPlaneColor = Color(0xFFc1c1c1);
  static const Color lightPurpleColor = Color(0xFFa277eb);
  static const Color purpleColor = Color(0xFF896dde);
  static const Color appTextColor = Color(0xFF18161d);
  static const Color travelTextColor = Color(0xFF07031a);
  static const Color selectedButtonBackgroundColor = Color(0xFF816be8);

  static const TextStyle travelTitleTextStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: AppSizes.fontLargeTitle,
    fontWeight: FontWeight.w700,
    color: AppUIConst.travelTextColor,
  );

  static const TextStyle appTitleTextStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: AppSizes.fontLargeTitle,
    fontWeight: FontWeight.w500,
    color: AppUIConst.travelTextColor,
  );
}
