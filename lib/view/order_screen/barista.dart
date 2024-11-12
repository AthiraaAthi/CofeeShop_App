import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:flutter/material.dart';

class BaristaScreen extends StatefulWidget {
  const BaristaScreen({super.key});

  @override
  State<BaristaScreen> createState() => _BaristaScreenState();
}

class _BaristaScreenState extends State<BaristaScreen> {
  List<String> nameList = [
    "Victor",
    "Vera",
    "Andrey",
  ];
  List<String> levelNames = ["Top Barista", "Top Barista", "Barista"];
  List<String> imgList = [
    ImageConstant.boy1,
    ImageConstant.girl1,
    ImageConstant.boy2
  ];
  List<Color> colors = [
    Colors.green,
    Colors.green,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Barista",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Barista",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.1),
                        blurRadius: 8,
                        spreadRadius: 3,
                        offset: Offset(1, 10),
                      ),
                    ]),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.boy1),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Victor",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Top barista",
                            style: TextStyle(
                                fontSize: 17, color: ColorConstant.nameGrey),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }

  void CircleFun(Color color) {
    CircleAvatar(
      radius: 10,
      backgroundColor: color,
    );
  }
}
