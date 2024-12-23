import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:flutter/material.dart';

class RedeemScreen extends StatefulWidget {
  const RedeemScreen({super.key});

  @override
  State<RedeemScreen> createState() => _RedeemScreenState();
}

class _RedeemScreenState extends State<RedeemScreen> {
  List<String> images = [
    ImageConstant.latte,
    ImageConstant.flatWhite_noBg,
    ImageConstant.cappuccino_noBg
  ];
  List<String> title = ["Latte", "Flat Whine", "Cappuccino"];
  List<String> subtitle = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Redeem"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(),
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image:
                        DecorationImage(image: AssetImage(ImageConstant.latte)),
                  ),
                  height: 60,
                  width: 60,
                ),
                title: Text("Latte"),
                subtitle: Text("valid until 04.07.24"),
                trailing: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      color: ColorConstant.mainBlue,
                      borderRadius: BorderRadius.circular(18)),
                  child: Center(
                      child: Text(
                    "1340 pts",
                    style: TextStyle(
                      color: ColorConstant.White,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
