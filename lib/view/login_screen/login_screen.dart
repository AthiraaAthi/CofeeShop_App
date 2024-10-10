import 'package:cofee_ui/utils/color_constant/color_constant.dart';
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's Get You In",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome Pal",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: ColorConstant.nameGrey),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade400, width: 0.7)),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                        right: 22, top: 10, bottom: 0, left: 22),
                    border: InputBorder.none,
                    hintText: "Email Address",
                    hintStyle:
                        TextStyle(fontSize: 13, color: Colors.grey.shade400),
                    prefixIcon: Icon(
                      Icons.mail_outlined,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade400, width: 0.7)),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                        left: 80, top: 10, bottom: 10, right: 20),
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle:
                        TextStyle(fontSize: 13, color: Colors.grey.shade400),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: ColorConstant.mainBlue),
                  )),
            ),
            SizedBox(
              height: 80,
            ),
            CircleAvatar(
              backgroundColor: ColorConstant.mainBlue,
              radius: 30,
            )
          ],
        ),
      ),
    );
  }
}
