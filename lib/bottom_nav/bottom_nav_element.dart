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
}
