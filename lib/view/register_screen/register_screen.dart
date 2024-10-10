import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Create an account here",
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
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                    border: InputBorder.none,
                    hintText: "Name",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    prefixIcon: Icon(
                      Icons.person_2_outlined,
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
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                    border: InputBorder.none,
                    hintText: "Mobile Number",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    prefixIcon: Icon(
                      Icons.phone_android,
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
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                    border: InputBorder.none,
                    hintText: "Email Address",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    prefixIcon: Icon(
                      Icons.mail_outline,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
