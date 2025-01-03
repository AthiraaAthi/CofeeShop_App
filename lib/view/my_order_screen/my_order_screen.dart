import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  Map<String, List<String>> onGoinglist = {
    "dateTime": [
      "24 June | 12:30 | by 18:10",
      "24 June | 12:30 | by 18:10",
      "24 June | 12:30 | by 18:10",
    ],
    "coffeType": [
      "Americano",
      "Latte",
      "Flat whine",
    ],
    "address": [
      "Bradford BD1 1PR",
      "Bradford BD1 1PR",
      "Bradford BD1 1PR",
    ]
  };
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "My Order",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          bottom: TabBar(
              labelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              indicatorColor: ColorConstant.mainBlue,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  text: "On going",
                ),
                Tab(
                  text: "History",
                ),
              ]),
        ),
        body: TabBarView(children: [
          ListView.builder(
            itemCount: onGoinglist["dateTime"]!.length,
            itemBuilder: (context, index) {
              return Padding(
                //1st tab
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                onGoinglist["dateTime"]![index],
                                style: TextStyle(color: ColorConstant.nameGrey),
                              ),
                              Text(
                                "BYN 3.00",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.local_cafe_outlined,
                                color: ColorConstant.mainBlue,
                                size: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                onGoinglist["coffeType"]![index],
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: ColorConstant.mainBlue,
                                size: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                onGoinglist["address"]![index],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              //2ndtab
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "24 June | 12:30 | by 18:10",
                            style: TextStyle(
                                color: ColorConstant.nameGrey, fontSize: 17),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              "BYN 3.00",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 127, 126, 126),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.local_cafe_outlined,
                                color: ColorConstant.mainBlue,
                                size: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Americano",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              _dialogFun(context);
                            },
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: ColorConstant.mainBlue),
                              child: Center(
                                child: Text(
                                  "Order",
                                  style: TextStyle(
                                      color: ColorConstant.White,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: ColorConstant.mainBlue,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Bradford BD1 1PR",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 130,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "24 June | 12:30 | by 18:10",
                            style: TextStyle(
                                color: ColorConstant.nameGrey, fontSize: 17),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              "BYN 3.00",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 127, 126, 126),
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.local_cafe_outlined,
                                color: ColorConstant.mainBlue,
                                size: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Mocha",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              _dialogFun(
                                context,
                              );
                            },
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: ColorConstant.mainBlue),
                              child: Center(
                                child: Text(
                                  "Order",
                                  style: TextStyle(
                                      color: ColorConstant.White,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: ColorConstant.mainBlue,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Bradford BD1 1PR",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  void _dialogFun(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text("The order has been completed."),
          content: Text("Please, rate the service."),
          actions: [],
        );
      },
    );
  }
}
