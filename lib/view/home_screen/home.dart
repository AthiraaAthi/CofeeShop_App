import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Column(
          children: [
            Text(
              "welcome!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20),
              child: Text(
                "Alex",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 26,
                width: 26,
                child: InkWell(
                  child: Image.asset(ImageConstant.cart),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                height: 26,
                width: 26,
                child: InkWell(
                  child: Image.asset(ImageConstant.profile),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
