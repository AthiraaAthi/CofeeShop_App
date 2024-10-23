import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeLoversScreen extends StatefulWidget {
  const CoffeeLoversScreen({super.key});

  @override
  State<CoffeeLoversScreen> createState() => _CoffeeLoversScreenState();
}

class _CoffeeLoversScreenState extends State<CoffeeLoversScreen> {
  double _currentValue = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Coffee Lovers Assemblage",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 25,
            )),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select a barista",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                  size: 30,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: ColorConstant.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Coffee type",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                CupertinoSlider(
                  value: 0,
                  onChanged: (value) {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
