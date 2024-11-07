import 'package:flutter/material.dart';

class CoffeeTypeScreen extends StatelessWidget {
  const CoffeeTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Coffee Lovers Assemblage",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
