import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:yours_shopping_app/Navigator%20bar%20pages/profile_page.dart';

import '../App bar pages/liked_page.dart';
import '../Navigator bar pages/home_page.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  int index = 0;
  final screens = [
    HomePage(),
    Center(
      child: Text("Trends"),
    ),
    Center(
      child: Text("Offers"),
    ),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.home_outlined,
        size: 25,
      ),
      Icon(
        Icons.trending_up_outlined,
        size: 25,
      ),
      Icon(
        Icons.local_offer_outlined,
        size: 25,
      ),
      Icon(
        Icons.person_2_outlined,
        size: 25,
      ),
    ];

    return Scaffold(
      extendBody:
          true, //if image is in body then the icons must not interfere with the icon are
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFFccc7c5),
        //0xFFccc7c5
        //0xFF89dad0
        //0xFFffd28d
        //0xFFfcab88
        //0xFF8f837f
        //0xFFa9a29f
        //0xFF5c524f
        //0xFF332d2b
        //0xffd379
        leading: IconButton(
            onPressed: () {},
            icon: Container(
              margin: EdgeInsets.all(4.0),
              child: Image.asset("assets/Images/logo/Y1.png"),
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LikedPage()),
              );
            },
            icon: Icon(Icons.favorite_border),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LikedPage()),
              );
            },
            icon: Icon(Icons.shopping_cart_outlined),
            color: Colors.black,
          ),
        ],
        elevation: 0,
      ),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.black),
        ),
        child: CurvedNavigationBar(
          color: Color(0xFFccc7c5),
          backgroundColor: Colors.transparent,
          height: 50,
          items: items,
          index: index,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }
}
