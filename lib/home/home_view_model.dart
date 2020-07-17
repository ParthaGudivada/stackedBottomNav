import 'package:flutter/material.dart';
//import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/app/locator.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  List<BottomNavigationBarItem> get availableItems =>
      availableChoices.map((elem) => elem.navChoiceItem()).toList();

  List<NavChoice> get availableChoices => [
        NavChoice.red,
        NavChoice.green,
        // NavChoice.blue,
        // NavChoice.yellow,
        // NavChoice.orange
      ];

  GlobalKey<NavigatorState> get currentNestedKey => _navigationService
      .nestedNavigationKey(availableChoices[currentIndex].nestedKeyValue());

  NavChoice get currentChoice => availableChoices[currentIndex];

  
}
