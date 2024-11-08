import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:cofee_ui/view/order_screen/additives_screen.dart';
import 'package:cofee_ui/view/order_screen/barista.dart';
import 'package:cofee_ui/view/order_screen/coffee_country.dart';
import 'package:cofee_ui/view/order_screen/cuper_bottomsheet.dart';
import 'package:cofee_ui/view/order_screen/order_screen.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BaristaScreen(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select a barista",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey,
                      size: 30,
                    )
                  ],
                ),
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
                  Column(
                    children: [
                      CupertinoSlider(
                        value: _currentValue,
                        min: 0,
                        max: 100,
                        divisions: 10,
                        onChanged: (value) {
                          setState(() {
                            _currentValue = value;
                          });
                        },
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width *
                            0.5, //Flutter expression used to get half of the screen width
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Arabica',
                              style: TextStyle(
                                fontSize: 15,
                                color: _currentValue <= 50
                                    ? Colors.blue
                                    : Colors.grey,
                              ),
                            ),
                            Text(
                              'Robusta',
                              style: TextStyle(
                                fontSize: 15,
                                color: _currentValue > 50
                                    ? Colors.blue
                                    : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Divider(
                color: ColorConstant.grey,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CoffeeCountryScreen(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Coffee Sort",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey,
                      size: 30,
                    )
                  ],
                ),
              ),
              Divider(
                color: ColorConstant.grey,
              ),
              Row(
                children: [
                  Text(
                    "Roasting",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.local_fire_department,
                        color: ColorConstant.nameGrey,
                        size: 30,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.local_fire_department,
                        color: ColorConstant.nameGrey,
                        size: 30,
                      ),
                      Icon(
                        Icons.local_fire_department,
                        color: ColorConstant.nameGrey,
                        size: 30,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.local_fire_department,
                        color: Colors.black,
                        size: 30,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.local_fire_department,
                            color: Colors.black,
                            size: 30,
                          ),
                          Icon(
                            Icons.local_fire_department,
                            color: Colors.black,
                            size: 30,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                color: ColorConstant.grey,
              ),
              Row(
                children: [
                  Text(
                    "Grinding",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Container(
                    height: 30,
                    width: 21,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.grinding1,
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Container(
                    height: 45,
                    width: 27,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.grinding2,
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              Divider(
                color: ColorConstant.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Milk",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  InkWell(
                    onTap: () {
                      // CuperBottomSheet(
                      //     title: "What type of milk do you prefer?",
                      //     none: "None",
                      //     cow: "Cow's",
                      //     lactose: "Lactose-free",
                      //     skimmed: "Skimmed",
                      //     veg: "Vegetable");
                      PreferenceSheet(
                          context,
                          "What type of milk do you prefer?",
                          "None",
                          "Cow's",
                          "Lactose-free",
                          "Skimmed",
                          "Vegetable");
                    },
                    child: Text(
                      "Select",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: ColorConstant.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Syrup",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  InkWell(
                    onTap: () {
                      PreferenceSheet(
                          context,
                          "What type of syrup do you prefer?",
                          "none",
                          "Amaretto",
                          "Coconut",
                          "Vanilla",
                          "Caramel");
                    },
                    child: Text(
                      "Select",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: ColorConstant.grey,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdditivesScreen(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Additives",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          size: 30,
                          color: Colors.grey,
                        ))
                  ],
                ),
              ),
              Divider(
                color: ColorConstant.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ice",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.crop_square,
                        color: ColorConstant.grey,
                        size: 20,
                      ), //1st ice
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        //2 cubes
                        Icons.crop_square,
                        color: ColorConstant.grey,
                        size: 20,
                      ),
                      Icon(
                        Icons.crop_square,
                        color: ColorConstant.grey,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        //3 cubes
                        children: [
                          Icon(
                            Icons.crop_square,
                            color: ColorConstant.grey,
                            size: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.crop_square,
                                color: ColorConstant.grey,
                                size: 20,
                              ),
                              Icon(
                                Icons.crop_square,
                                color: ColorConstant.grey,
                                size: 20,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "BYN 9.00",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderScreen()));
                },
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      color: ColorConstant.mainBlue,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void PreferenceSheet(BuildContext context, String title, String none,
      String cow, String lactose, String skimmed, String veg) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          title: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          actions: [
            CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context, 'None');
                },
                child: Text(
                  none,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
            CupertinoActionSheetAction(
              onPressed: () {},
              child: Text(
                cow,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            CupertinoActionSheetAction(
              onPressed: () {},
              child: Text(
                lactose,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            CupertinoActionSheetAction(
              onPressed: () {},
              child: Text(
                skimmed,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            CupertinoActionSheetAction(
              onPressed: () {},
              child: Text(
                veg,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Cancel",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            isDefaultAction: true,
          ),
        );
      },
    );
  }
}
