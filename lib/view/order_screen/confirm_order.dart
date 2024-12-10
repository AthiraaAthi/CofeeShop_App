import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:flutter/material.dart';

class ConfirmOrderScreen extends StatelessWidget {
  const ConfirmOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 177,
              width: 177,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.confirm_order,
                      ),
                      fit: BoxFit.cover)),
            ),
            Text("Ordered")
          ],
        ),
      ),
    );
  }
}
