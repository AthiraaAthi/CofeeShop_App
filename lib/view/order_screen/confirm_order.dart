import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:cofee_ui/view/home_screen/home.dart';
import 'package:flutter/material.dart';

class ConfirmOrderScreen extends StatelessWidget {
  const ConfirmOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            child: Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
      ),
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
            SizedBox(
              height: 20,
            ),
            Text(
              "Ordered",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Alex your order has been Successfully placed",
              style: TextStyle(
                  color: ColorConstant.textGrey,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Text(
                  "The order will be ready today",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "to 18:10 at the address",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "Bradford BD1 1PR.",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Text(
                      "Submit your personal QR code",
                      style: TextStyle(
                          color: ColorConstant.textGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    Text(
                      "at a coffee shop to receive an order.",
                      style: TextStyle(
                          color: ColorConstant.textGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Back to Home",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: ColorConstant.mainBlue),
                ),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 30,
                  color: ColorConstant.mainBlue,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
