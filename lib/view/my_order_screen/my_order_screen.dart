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
          bottom: TabBar(indicatorWeight: 3, tabs: [
            Tab(
              text: "On going",
            ),
            Tab(
              text: "History",
            ),
          ]),
        ),
      ),
    );
  }
}
