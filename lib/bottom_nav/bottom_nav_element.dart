import 'package:flutter/material.dart';
import 'package:stackedBottomNav/app/blue_router.gr.dart';
import 'package:stackedBottomNav/app/green_router.gr.dart';
import 'package:stackedBottomNav/app/orange_router.gr.dart';
import 'package:stackedBottomNav/app/red_router.gr.dart';
import 'package:stackedBottomNav/app/shared_constants.dart';
import 'package:stackedBottomNav/app/yellow_router.gr.dart';

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

  String initialPageRoute() {
    String selectedText;

    switch (this) {
      case NavChoice.red:
        selectedText = redColorPageViewRoute;
        break;
      case NavChoice.green:
        selectedText = greenColorPageViewRoute;
        break;
      case NavChoice.blue:
        selectedText = blueColorPageViewRoute;
        break;
      case NavChoice.yellow:
        selectedText = yellowColorPageViewRoute;
        break;
      case NavChoice.orange:
        selectedText = orangeColorPageViewRoute;
        break;
    }

    return selectedText;
  }

  int keyValue() {
    int value;

    switch (this) {
      case NavChoice.red:
        value = 1;
        break;
      case NavChoice.green:
        value = 2;
        break;
      case NavChoice.blue:
        value = 3;
        break;
      case NavChoice.yellow:
        value = 4;
        break;
      case NavChoice.orange:
        value = 5;
        break;
    }

    return value;
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (this) {
      case NavChoice.red:
        return RedRouter().onGenerateRoute(settings);

      case NavChoice.green:
        return GreenRouter().onGenerateRoute(settings);

      case NavChoice.blue:
        return BlueRouter().onGenerateRoute(settings);

      case NavChoice.yellow:
        return YellowRouter().onGenerateRoute(settings);

      case NavChoice.orange:
        return OrangeRouter().onGenerateRoute(settings);
    }

    return RedRouter().onGenerateRoute(settings);
  }

  // static GlobalKey<NavigatorState> globalKey1(NavChoice choice) {
  //   return _navigatorStateKeys[choice];
  // }

  // GlobalKey<NavigatorState> globalKey() {
  //   return _navigatorStateKeys[this];
  // }

  PageStorageKey pageStorageKey() {
    return _pageStorageKeys[this];
  }

  // static Map<NavChoice, GlobalKey<NavigatorState>> _navigatorStateKeys = {
  //   NavChoice.red: GlobalKey<NavigatorState>(),
  //   NavChoice.green: GlobalKey<NavigatorState>(),
  //   NavChoice.blue: GlobalKey<NavigatorState>(),
  //   NavChoice.yellow: GlobalKey<NavigatorState>(),
  //   NavChoice.orange: GlobalKey<NavigatorState>(),
  // };

  static Map<NavChoice, PageStorageKey> _pageStorageKeys = {
    NavChoice.red: PageStorageKey(NavChoice.red.navTitle()),
    NavChoice.green: PageStorageKey(NavChoice.green.navTitle()),
    NavChoice.blue: PageStorageKey(NavChoice.blue.navTitle()),
    NavChoice.yellow: PageStorageKey(NavChoice.yellow.navTitle()),
    NavChoice.orange: PageStorageKey(NavChoice.orange.navTitle()),
  };
}
