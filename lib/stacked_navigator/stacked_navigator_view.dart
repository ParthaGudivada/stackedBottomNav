import 'package:flutter/material.dart';
import 'package:stackedBottomNav/app/locator.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stacked_services/stacked_services.dart';

class StackedNavigator extends StatelessWidget {
  final NavigationService _navigationService = locator<NavigationService>();

  final NavChoice choice;

  StackedNavigator({this.choice});

  @override
  Widget build(BuildContext context) {
    print('key: ${choice.keyValue()} route: ${choice.initialPageRoute()}');
    return Navigator(
      key: _navigationService.nestedNavigationKey(choice.keyValue()),
      initialRoute: choice.initialPageRoute(),
      //onGenerateRoute: (settings) => StackedNavigatorRoute.generateRoute(settings, context, choice),
      onGenerateRoute: choice.onGenerateRoute,
    );
  }
}
