import 'dart:async';

import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:cofee_ui/view/bottom_nav/bottom_nav.dart';
import 'package:cofee_ui/view/home_screen/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => BottomNav(),
        ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstant.cofee), fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 200),
            child: Text(
              "Magic Coffee",
              style: GoogleFonts.dancingScript(
                fontSize: 45,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
