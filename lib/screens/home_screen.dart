import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/app_utils/app_sizes.dart';
import 'package:travel_app/app_utils/app_ui_const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Set the status bar color to match the background
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Status bar color
        statusBarIconBrightness:
            Brightness.light, // For white icons on dark background
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppUIConst.whiteColor,
      body: Stack(
        children: [
          //   Background Globe Image Portion
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: AppUIConst.whiteColor,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              color: AppUIConst.purpleBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(AppSizes.borderRadius50),
                bottomRight: Radius.circular(AppSizes.borderRadius50),
              ),
            ),
            child: Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(
                  "assets/images/background_globe_image_4.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: AppUIConst.whiteColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/airplane_icon.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Center(
// child: RichText(
// text: const TextSpan(
// children: [
// TextSpan(
// text: AppStrings.travel,
// style: AppUIConst.travelTitleTextStyle),
// TextSpan(
// text: AppStrings.app,
// style: AppUIConst.appTitleTextStyle,
// )
// ],
// ),
// ),
// ),
// ],
// ),

// Column(
// children: [
// ElevatedButton(
// onPressed: () {},
// child: Text(
// AppStrings.logIn,
// ),
// ),
// ],
// ),
