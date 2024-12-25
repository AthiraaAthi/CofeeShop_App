import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:flutter/material.dart';

class RedeemScreen extends StatefulWidget {
  const RedeemScreen({super.key});

  @override
  State<RedeemScreen> createState() => _RedeemScreenState();
}

class _RedeemScreenState extends State<RedeemScreen> {
  Map<String, List<String>> redeem = {
    "images": [
      ImageConstant.americano_noBg,
      ImageConstant.flatWhite_noBg,
      ImageConstant.cappuccino_noBg
    ],
    "title": ["Americano", "Flat Whine", "Latte"],
    "subtitle": [
      "valid until 04.07.24",
      "valid until 04.07.24",
      "valid until 04.07.24",
    ],
    "points": ["1340 pts", "1340 pts", "1340 pts"]
  };
  // List<String> images = [
  //   ImageConstant.americano_noBg,
  //   ImageConstant.flatWhite_noBg,
  //   ImageConstant.cappuccino_noBg
  // ];
  // List<String> title = ["Americano", "Flat Whine", "Latte"];
  // List<String> subtitle = [
  //   "valid until 04.07.24",
  //   "valid until 04.07.24",
  //   "valid until 04.07.24",
  // ];
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
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: redeem["images"]!.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              redeem["images"]![index],
                            ),
                            fit: BoxFit.cover),
                      ),
                      height: 60,
                      width: 60,
                    ),
                    title: Text(
                      redeem["title"]![index],
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15.2),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        redeem["subtitle"]![index],
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.5,
                            color: ColorConstant.nameGrey),
                      ),
                    ),
                    trailing: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          color: ColorConstant.mainBlue,
                          borderRadius: BorderRadius.circular(18)),
                      child: Center(
                        child: Text(
                          redeem["points"]![index],
                          style: TextStyle(
                              color: ColorConstant.White,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )));
  }
}
