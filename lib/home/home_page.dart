import 'package:flutter/material.dart';
import 'package:stackedBottomNav/navigators/blue_navigator_view.dart';
import 'package:stackedBottomNav/navigators/green_navigator_view.dart';
import 'package:stackedBottomNav/navigators/red_navigator_view.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text('Red'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.free_breakfast),
              title: Text('Green'),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            RedNavigator(),
            GreenNavigator(),
          ],
        ),
      ),
    );
  }
}
