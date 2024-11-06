import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:flutter/material.dart';

class CoffeeCountryScreen extends StatefulWidget {
  const CoffeeCountryScreen({super.key});

  @override
  State<CoffeeCountryScreen> createState() => _CoffeeCountryScreenState();
}

class _CoffeeCountryScreenState extends State<CoffeeCountryScreen> {
  List<String> countriesList = [
    "Brazil",
    "Columbia",
    "Costa Rica",
    "Jamaica",
    "Yemen",
    "Kenya",
    "India",
    "Tanzania",
    "Hawaii",
    "Indonesia",
    "Ethiopia"
  ];
  List<bool> selected =
      List.generate(11, (index) => false); //for selcted state for each country
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
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Country and sort of Coffee",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: countriesList.length,
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selected[index] = !selected[index];
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          countriesList[index],
                          style: TextStyle(
                            fontSize: 16,
                            color: selected[index] ? Colors.blue : Colors.black,
                            fontWeight: selected[index]
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 30,
                          color: ColorConstant.nameGrey,
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: ColorConstant.grey,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
