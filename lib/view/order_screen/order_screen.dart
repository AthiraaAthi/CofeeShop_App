import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/utils/image_constant/img_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<Map<String, String>> coffeeList = [
    {"name": "Americano", "image": ImageConstant.americano_noBg},
    {"name": "Cappuchino", "image": ImageConstant.cappuccino_noBg},
    {"name": "Flat White", "image": ImageConstant.flatWhite_noBg},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Order",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: coffeeList.length,
              itemBuilder: (context, index) {
                final coffee = coffeeList[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Slidable(
                    key: ValueKey(coffee["name"]),
                    endActionPane:
                        ActionPane(motion: ScrollMotion(), children: [
                      SlidableAction(
                        onPressed: (context) {
                          //delete operation
                        },
                        backgroundColor: Color(0xffffe5e5),
                        icon: Icons.delete_outline,
                        foregroundColor: Colors.red,
                      )
                    ]),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                          color: ColorConstant.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(coffee["image"]!))),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                coffee["name"]!,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Single|iced|medium|full ice",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              Text(
                                "x 1",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, left: 10),
                            child: Column(
                              children: [
                                Text(
                                  "BYN",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "3.00",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Total Price",
                        style: TextStyle(color: ColorConstant.nameGrey),
                      ),
                      Text(
                        "BYN 9.00",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      paymentBottomSheet(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 30, right: 20),
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: ColorConstant.mainBlue,
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Next",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void paymentBottomSheet(BuildContext context) {
    String _selectedValue = "true";
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(25),
          height: 600,
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    "Order payment",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 80,
                width: 360,
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: ColorConstant.grey,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        Icon(
                          Icons.shopping_cart_outlined,
                          size: 25,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Alex",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Text("Magic Coffee Store"),
                        Text("Bradford BDI 1PR"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 80,
                width: 360,
                decoration: BoxDecoration(
                    color: ColorConstant.grey,
                    borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  contentPadding: EdgeInsets.only(right: 25),
                  leading: Radio(
                    value: "true",
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                  title: Text(
                    "Online Payments",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  subtitle: Text(
                    "Assist Belarus",
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Container(
                      height: 50,
                      width: 90,
                      child: Image.asset(
                        ImageConstant.assist_noBg,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                width: 360,
                decoration: BoxDecoration(
                    color: ColorConstant.grey,
                    borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  contentPadding: EdgeInsets.only(right: 25),
                  leading: Radio(
                    value: "false",
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                  title: Text(
                    "Credit Card",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    "2540 xxxx xxxx 2648",
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Container(
                    height: 50,
                    width: 100,
                    child: Image.asset(
                      ImageConstant.visa_noBg,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Amount",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "BYN 9.00",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Total Price",
                    style: TextStyle(),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
