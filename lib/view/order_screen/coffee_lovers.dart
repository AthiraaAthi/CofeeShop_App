import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Coffee Sort",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                    size: 30,
                  )
                ],
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
                    onTap: () {},
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
                    onTap: () {},
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Additives",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
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
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "BYN 9.00",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
