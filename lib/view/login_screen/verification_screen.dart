import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 48,
      height: 61,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 231, 231, 233),
        borderRadius: BorderRadius.circular(10),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Colors.yellow),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Colors.white,
      ),
    );
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Verification",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Enter the OTP Code we send you",
              style: TextStyle(fontSize: 18, color: ColorConstant.textGrey),
            ),
            SizedBox(
              height: 30,
            ),
            Pinput(
              separatorBuilder: (index) {
                return SizedBox(
                  width: 20,
                );
              },
              length: 4,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              pinAnimationType: PinAnimationType.fade,
              onCompleted: (pin) {},
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Resend in 00:30",
              style: TextStyle(color: ColorConstant.nameGrey, fontSize: 17),
            )
          ],
        ),
      ),
    );
  }
}
