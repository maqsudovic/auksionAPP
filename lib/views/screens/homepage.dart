import 'package:auksion_app/views/screens/cartpage.dart';
import 'package:auksion_app/views/screens/homescreen.dart';
import 'package:auksion_app/views/screens/profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Widget> screens = [
    const Homescreen(),
    const CartPage(),
    const Profilepage(),
  ];

  int _choiceIndex = 0;

  void _changeIndex(int index) {
    setState(() {
      _choiceIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        currentIndex: _choiceIndex,
        onTap: _changeIndex,
        selectedItemColor: Theme.of(context).colorScheme.onInverseSurface,
        unselectedItemColor: Theme.of(context).colorScheme.inverseSurface,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart), label: 'Products'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: screens[_choiceIndex],
    );
  }
}
