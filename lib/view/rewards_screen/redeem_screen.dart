import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:flutter/material.dart';

class RedeemScreen extends StatefulWidget {
  const RedeemScreen({super.key});

  @override
  State<RedeemScreen> createState() => _RedeemScreenState();
}

class _RedeemScreenState extends State<RedeemScreen> {
  List<String> images = [ImageConstant.latte, ImageConstant.flatWhite_noBg];
  List<String> title = [];
  List<String> subtitle = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Redeem"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(),
            child: ListTile(
              leading: Container(),
              title: Text("Latte"),
              subtitle: Text("valid until 04.07.24"),
              trailing: Container(
                height: 32,
                width: 76,
                decoration: BoxDecoration(
                    color: ColorConstant.mainBlue,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                  "1340 pts",
                  style: TextStyle(
                    color: ColorConstant.White,
                  ),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
