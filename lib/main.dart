import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'maps.dart';

// ignore: camel_case_types
class myapp extends StatefulWidget {
  myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

int currentIndex = 0;
final pages = [myapp(), mapsPage()];
void main() => runApp(myapp());

// ignore: camel_case_types
class _myappState extends State<myapp> {
  int currentIndex = 0;

  final pages = [myapp(), mapsPage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: IndexedStack(index: currentIndex, children: (pages)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        elevation: 3,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Anasayfa"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_city), label: "Konumunuz"),
        ],
      ),
    ));
  }
}
