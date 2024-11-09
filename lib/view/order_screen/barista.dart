import 'package:flutter/material.dart';

class BaristaScreen extends StatelessWidget {
  const BaristaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Barista",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(),
    );
  }
}
