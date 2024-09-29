import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
