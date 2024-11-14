import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20),
        child: Column(
          children: [
            Text(
              "My Order",
              style: TextStyle(fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
