import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> titles = ["Name", "Phone Number", "Email", "Address"];
  List<String> subTitles = [
    "Alex",
    "9876543210",
    "Alex@gmail.com",
    "Las Vegas,California"
  ];
  List<Icon> icons = [
    Icon(Icons.person_outline_outlined),
    Icon(Icons.phone_outlined),
    Icon(Icons.mail_outline),
    Icon(Icons.location_on_outlined)
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
                leading: CircleAvatar(
                  radius: 42,
                  backgroundColor: Colors.grey,
                ),
                title: Text("fhfkd"),
                subtitle: Text("avava"),
                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
