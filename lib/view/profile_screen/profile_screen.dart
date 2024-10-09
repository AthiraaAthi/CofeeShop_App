import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> titles = [
    "Name",
    "Phone Number",
    "Email",
    "Address",
  ];
  List<String> subTitles = [
    "Alex",
    "9876543210",
    "Alex@gmail.com",
    "Las Vegas,California",
  ];
  List<IconData> icons = [
    Icons.person_outline_outlined,
    Icons.phone_outlined,
    Icons.mail_outline,
    Icons.location_on_outlined
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 25,
            )),
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
        ),
        backgroundColor: Color(0xffE5E5E5),
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) => Container(
              height: 80,
              child: ListTile(
                leading: Stack(alignment: Alignment.center, children: [
                  CircleAvatar(
                    radius: 42,
                    backgroundColor: Color(0xffdce4e4),
                  ),
                  Icon(
                    icons[index],
                    size: 25,
                    color: Colors.black,
                  )
                ]),
                title: Text(
                  titles[index],
                  style: TextStyle(
                      fontSize: 13,
                      color: ColorConstant.nameGrey,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  subTitles[index],
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
