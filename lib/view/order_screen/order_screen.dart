import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 30,
            width: 30,
            child: InkWell(
              child: Image.asset(
                ImageConstant.cart,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          "Order",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffF7F8FB),
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(ImageConstant.cappuccino))),
              height: 146,
              width: 340,
            )
          ],
        ),
      ),
    );
  }
}