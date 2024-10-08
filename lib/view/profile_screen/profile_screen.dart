import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                radius: 42,
                backgroundColor: Colors.grey,
              ),
              title: Text("fhfkd"),
              subtitle: Text("avava"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
            ),
          )
        ],
      ),
    );
  }
}
