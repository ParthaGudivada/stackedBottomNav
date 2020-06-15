import 'package:flutter/material.dart';

enum NavChoice { red, green, blue, yellow, orange }

extension NavChoicetExtension on NavChoice {
  BottomNavigationBarItem navChoiceItem() {
    BottomNavigationBarItem item;

    switch (this) {
      case NavChoice.red:
        item = BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit), title: Text(this.navTitle()));
        break;

      case NavChoice.green:
        item = BottomNavigationBarItem(
            icon: Icon(Icons.bluetooth), title: Text(this.navTitle()));
        break;

      case NavChoice.blue:
        item = BottomNavigationBarItem(
            icon: Icon(Icons.cake), title: Text(this.navTitle()));
        break;

      case NavChoice.yellow:
        item = BottomNavigationBarItem(
            icon: Icon(Icons.dashboard), title: Text(this.navTitle()));
        break;

      case NavChoice.orange:
        item = BottomNavigationBarItem(
            icon: Icon(Icons.event_seat), title: Text(this.navTitle()));
        break;
    }

    return item;
  }

  MaterialColor navColor() {
    MaterialColor selectedColor;

    switch (this) {
      case NavChoice.red:
        selectedColor = Colors.red;
        break;
      case NavChoice.green:
        selectedColor = Colors.green;
        break;
      case NavChoice.blue:
        selectedColor = Colors.blue;
        break;
      case NavChoice.yellow:
        selectedColor = Colors.yellow;
        break;
      case NavChoice.orange:
        selectedColor = Colors.orange;
        break;
    }

    return selectedColor;
  }

  String navTitle() {
    String selectedText;

    switch (this) {
      case NavChoice.red:
        selectedText = 'Red';
        break;
      case NavChoice.green:
        selectedText = 'Green';
        break;
      case NavChoice.blue:
        selectedText = 'Blue';
        break;
      case NavChoice.yellow:
        selectedText = 'Yellow';
        break;
      case NavChoice.orange:
        selectedText = 'Orange';
        break;
    }

    return selectedText;
  }

  static GlobalKey<NavigatorState> globalKey1(NavChoice choice) {
    return _navigatorStateKeys[choice];
  }

  GlobalKey<NavigatorState> globalKey() {
    return _navigatorStateKeys[this];
  }

  PageStorageKey pageStorageKey() {
    return _pageStorageKeys[this];
  }

  static Map<NavChoice, GlobalKey<NavigatorState>> _navigatorStateKeys = {
    NavChoice.red: GlobalKey<NavigatorState>(),
    NavChoice.green: GlobalKey<NavigatorState>(),
    NavChoice.blue: GlobalKey<NavigatorState>(),
    NavChoice.yellow: GlobalKey<NavigatorState>(),
    NavChoice.orange: GlobalKey<NavigatorState>(),
  };

  static Map<NavChoice, PageStorageKey> _pageStorageKeys = {
    NavChoice.red: PageStorageKey(NavChoice.red.navTitle()),
    NavChoice.green: PageStorageKey(NavChoice.green.navTitle()),
    NavChoice.blue: PageStorageKey(NavChoice.blue.navTitle()),
    NavChoice.yellow: PageStorageKey(NavChoice.yellow.navTitle()),
    NavChoice.orange: PageStorageKey(NavChoice.orange.navTitle()),
  };
}
