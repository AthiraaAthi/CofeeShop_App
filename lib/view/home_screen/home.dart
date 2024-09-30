import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
        leading: Row(
          children: [
            InkWell(
              child: Image.asset(),
            )
          ],
        ),
      ),
    );
  }
}
