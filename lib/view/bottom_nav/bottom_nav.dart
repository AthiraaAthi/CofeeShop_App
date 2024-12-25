import 'package:cofee_ui/utils/color_constant/color_constant.dart';
import 'package:cofee_ui/view/home_screen/home.dart';
import 'package:cofee_ui/view/my_order_screen/my_order_screen.dart';
import 'package:cofee_ui/view/rewards_screen/rewards_screen.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    RewardScreen(),
    MyOrders(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: screens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0), // Rounded edges
            boxShadow: [
              BoxShadow(
                color: Colors.black
                    .withOpacity(0.3), // Shadow to create floating effect
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 3), // Positioned shadow under the bar
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: BottomNavigationBar(
                unselectedItemColor: Colors.grey,
                selectedItemColor: Colors.black,
                backgroundColor: Colors.white,
                onTap: (index) {
                  _selectedIndex = index;
                  setState(() {});
                },
                currentIndex: _selectedIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.card_giftcard), label: "Rewards"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart), label: "My Order"),
                ]),
          ),
        ),
      ),
    );
  }
}
