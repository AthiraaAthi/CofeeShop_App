import 'package:cofee_ui/utils/color_constant/color_constant.dart';
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
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 147, 206, 149)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "24 June | 12:30 | by 18:10",
                            style: TextStyle(),
                          ),
                          Text(
                            "BYN 3.00",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Text("Americano"),
                      Text("Bradford BD1 1PR")
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [Text("sdfhsooooooooooooo")],
          ),
        ]),
      ),
    );
  }
}
