import 'package:ecommerceapp/screens/home/home_view_UI.dart';
import 'package:ecommerceapp/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset(
                AppImages.welcomeImage,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 120),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(AppImages.carrotlogo),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 320),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(AppImages.welcomestore),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 460),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(AppImages.welcomestoresub),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 70),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => homescreen()));
                },
                child: Image.asset(
                  AppImages.getstartedbtn,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
