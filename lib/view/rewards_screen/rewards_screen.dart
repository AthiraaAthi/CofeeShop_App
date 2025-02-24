import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:cofee_ui/view/rewards_screen/redeem_screen.dart';
import 'package:flutter/material.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  Map<String, List<String>> coffeeData = {
    "names": ["Americano", "Latte", "Raf", "Flat White"],
    "dateTimes": [
      "24 June | 12:30",
      "22 June | 08:30",
      "16 June | 10:48",
      "12 May | 11:25",
    ],
    "points": [
      "+ 12 Pts",
      "+ 12 Pts",
      "+ 12 Pts",
      "+ 12 Pts",
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Rewards",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 135,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstant.mainBlue,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Loyality Card",
                          style: TextStyle(
                            color: ColorConstant.White,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "4/8",
                          style: TextStyle(
                            color: ColorConstant.White,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: ColorConstant.White,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(ImageConstant.coffee_reward),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 25, right: 20),
                height: 125,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstant.mainBlue,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Points:",
                          style: TextStyle(
                            color: ColorConstant.White,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "2750",
                          style: TextStyle(
                            color: ColorConstant.White,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RedeemScreen(),
                            ));
                      },
                      child: Container(
                        width: 100,
                        height: 32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(255, 80, 110, 134)),
                        child: Center(
                          child: Text(
                            "Redeem drinks",
                            style: TextStyle(
                                color: ColorConstant.White, fontSize: 12),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "History Rewards",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                itemCount: coffeeData["names"]!.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                coffeeData["names"]![index],
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                coffeeData["dateTimes"]![index],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: ColorConstant.nameGrey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                            coffeeData["points"]![index],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
