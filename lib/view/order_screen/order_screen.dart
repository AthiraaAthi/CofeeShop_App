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
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: ColorConstant.grey,
                borderRadius: BorderRadius.circular(20)),
            height: 146,
            width: 325,
          )
        ],
      ),
    );
  }
}
