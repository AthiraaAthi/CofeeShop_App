import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    ImageConstant.americano,
    ImageConstant.cappuccino,
    ImageConstant.latte,
    ImageConstant.flatWhite,
    ImageConstant.raf,
    ImageConstant.espresso
  ];
  List<String> cofeeNames = [
    "Americano",
    "Cappuccino",
    "Latte",
    "Flat White",
    "Raf",
    "Espresso"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Column(
          children: [
            Text(
              "welcome!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20),
              child: Text(
                "Alex",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
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
              SizedBox(
                width: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 25,
                  width: 25,
                  child: InkWell(
                    child: Image.asset(
                      ImageConstant.profile,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            color: ColorConstant.mainBlue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Color(0xffF7F8FB),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [Image.asset(images[index])],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    cofeeNames[index],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
