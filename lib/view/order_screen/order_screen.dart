import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        centerTitle: true,
        title: Text(
          "Order",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffF7F8FB),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.cappuccino))),
                height: 146,
                width: 340,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Capuccino",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                  Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: ColorConstant.grey,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                              size: 15,
                            )),
                        Text("1"),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: 15,
                            )),
                      ],
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
                children: [
                  Text(
                    "Ristretto",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: ColorConstant.grey,
                        )),
                    child: Center(child: Text("One")),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: ColorConstant.grey,
                        )),
                    child: Center(child: Text("Two")),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: ColorConstant.grey,
              ),
              Row(
                children: [
                  Text(
                    "Onsite/TakeAway",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.Onsite,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.takeAway,
                            ),
                            fit: BoxFit.cover)),
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
                children: [
                  Text(
                    "Volume/ml",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    height: 60,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.ml250,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 70,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.ml350,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 80,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.ml450,
                            ),
                            fit: BoxFit.cover)),
                  ),
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
                    "Prepare by a certain time today ?",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  CupertinoSwitch(
                    value: true,
                    onChanged: (value) {},
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 36,
                    width: 90,
                    decoration: BoxDecoration(
                        color: ColorConstant.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "18 :",
                          style: TextStyle(
                              fontSize: 19,
                              color: Color.fromARGB(255, 74, 74, 74)),
                        ),
                        Text(
                          "10",
                          style: TextStyle(fontSize: 19, color: Colors.black),
                        ),
                      ],
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 315,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Color(0xffEEA4CE),
                      Color(0xffC58BF2),
                    ])),
                child: ListTile(
                  leading: Icon(
                    Icons.tune,
                    color: Colors.black,
                    size: 25,
                  ),
                  title: Text(
                    "Coffee Lovers Assemblage",
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 15),
                  ),
                  trailing: SizedBox(
                    width: 12,
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xffFFFFFF),
                      size: 30,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
