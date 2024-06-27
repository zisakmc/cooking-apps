import 'package:flutter/material.dart';

class DrawerSection extends StatefulWidget {
  const DrawerSection({super.key});

  @override
  State<DrawerSection> createState() => _DrawerState();
}

class _DrawerState extends State<DrawerSection> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            child: Text(
              "Let him cook!!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text(
              "About",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Welcome to "Let him cook!!" \n Cooking application designed to elevate your culinary skills and inspire your inner chef. Whether youre a seasoned cook or a kitchen novice, This application provides recipes  you need to create delicious meals with confidence and ease. \n\n Hope you enjoy it!!',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Zisa",
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
