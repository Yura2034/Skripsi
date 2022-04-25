import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sekripsi/MenuBaar/camera.dart';
import 'Login/welcome.dart';
import 'MenuBaar/Home.dart';

class NavbarPage extends StatefulWidget {

  const NavbarPage({Key key}) : super(key: key);

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {

  int currentIndex = 0;
  final List<Widget> body = [
    HomePage(),
    camera(),
    WelcomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home, color: Colors.lightBlue,),
            label: 'Home',
            activeIcon: Icon(Icons.home_outlined, color: Colors.amberAccent,),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt, color: Colors.lightBlue,),
            label: 'Camera',
            activeIcon: Icon(
              Icons.camera_alt_outlined, color: Colors.amberAccent,),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle, color: Colors.lightBlue,),
            label: 'Account',
            activeIcon: Icon(
              Icons.account_circle_outlined, color: Colors.amberAccent,),
          ),
        ],
      ),
    );
  }
  void ontap (int index) {
    setState(() {
      currentIndex = index;
    });
  }

}



