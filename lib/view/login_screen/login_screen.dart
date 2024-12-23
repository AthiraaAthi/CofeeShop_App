import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/view/bottom_nav/bottom_nav.dart';
import 'package:cofee_ui/view/home_screen/home.dart';
import 'package:cofee_ui/view/login_screen/forgot_pass.dart';
import 'package:cofee_ui/view/register_screen/register_screen.dart';
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
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordScreen(),
                        ));
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: ColorConstant.mainBlue),
                  )),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(alignment: Alignment.center, children: [
                  CircleAvatar(
                    backgroundColor: ColorConstant.mainBlue,
                    radius: 30,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNav(),
                            ));
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 25,
                      ))
                ]),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New Member?",
                  style: TextStyle(color: ColorConstant.nameGrey, fontSize: 16),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ));
                  },
                  child: Text(
                    "Sign Up",
                    style:
                        TextStyle(color: ColorConstant.mainBlue, fontSize: 16),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
