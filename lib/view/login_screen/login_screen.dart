import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              "Let's Get You In",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
