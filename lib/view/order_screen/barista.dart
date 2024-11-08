import 'package:flutter/material.dart';

class BaristaScreen extends StatelessWidget {
  const BaristaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Barista"),
        centerTitle: true,
      ),
    );
  }
}
