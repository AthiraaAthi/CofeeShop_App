import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

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
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
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
                            style: TextStyle(color: ColorConstant.nameGrey),
                          ),
                          Text(
                            "BYN 3.00",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.local_cafe_outlined,
                            color: ColorConstant.mainBlue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Americano",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Text(
                        "Bradford BD1 1PR",
                        style: TextStyle(),
                      )
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
          ),
          Column(
            //2ndtab
            children: [Text("sdfhsooooooooooooo")],
          ),
        ]),
      ),
    );
  }
}
