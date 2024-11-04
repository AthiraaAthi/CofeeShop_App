import 'package:flutter/material.dart';

class AdditivesScreen extends StatefulWidget {
  AdditivesScreen({super.key});

  @override
  State<AdditivesScreen> createState() => _AdditivesScreenState();
}

class _AdditivesScreenState extends State<AdditivesScreen> {
  List<String> additivesList = [
    "Cylon Cinnamon",
    "Grated Chocolate",
    "Liquid Chocolate",
    "Marshmallow",
    "Whipped cream",
    "Cream",
    "Nutmeg",
    "Ice Cream"
  ];
  List<bool> selected =
      List.generate(8, (index) => false); //for selcted state for each additive
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Coffee Lovers Assemblage",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 25,
            )),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select additives",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 40,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: additivesList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(
                  left: 0,
                  bottom: 12,
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text(additivesList[index]),
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
