import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:flutter/material.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Rewards",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConstant.mainBlue,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Loyality Card",
                        style: TextStyle(
                          color: ColorConstant.White,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "4/8",
                        style: TextStyle(
                          color: ColorConstant.White,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ColorConstant.White,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(ImageConstant.coffee_reward),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
