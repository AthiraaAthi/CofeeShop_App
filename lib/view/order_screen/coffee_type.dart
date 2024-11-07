import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:flutter/material.dart';

class CoffeeTypeScreen extends StatefulWidget {
  const CoffeeTypeScreen({super.key});

  @override
  State<CoffeeTypeScreen> createState() => _CoffeeTypeScreenState();
}

class _CoffeeTypeScreenState extends State<CoffeeTypeScreen> {
  List<String> typeList = [
    "Santos",
    "Bourbon Santos",
    "Minas",
    "Rio",
    "Canilon",
    "Flat"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "select a sort of Coffee",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: typeList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      typeList[index],
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Divider(
                      color: ColorConstant.grey,
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
