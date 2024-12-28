import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  List<String> dateTime = [
    "24 June | 12:30 | by 18:10",
    "24 June | 12:30 | by 18:10",
    "24 June | 12:30 | by 18:10",
  ];
  List<String> coffeType = [
    "Americano",
    "Latte",
    "Flat whine",
  ];
  List<String> address = [
    "Bradford BD1 1PR",
    "Bradford BD1 1PR",
    "Bradford BD1 1PR",
  ];
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
          ListView.builder(
            itemBuilder: (context, index) {},
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
