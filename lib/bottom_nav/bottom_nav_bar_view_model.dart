import 'package:flutter/material.dart';
import 'package:stackedBottomNav/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/services/bottom_nav_service.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';

class BottomNavBarViewModel extends BaseViewModel {
  final _bottomNavService = locator<BottomNavService>();

  int _selectedIndex;
  int get selectedIndex => _selectedIndex;

  void tappedIndex(int selIndex) {
    _selectedIndex = selIndex;
    notifyListeners();

    _bottomNavService.tappedIndex(selIndex);
  }

  List<BottomNavigationBarItem> get availableItems =>
      _bottomNavService.availableChoices
          .map((elem) => elem.navChoiceItem())
          .toList();
}
