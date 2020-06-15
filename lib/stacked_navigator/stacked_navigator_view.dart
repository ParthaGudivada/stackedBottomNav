import 'package:flutter/material.dart';
import 'package:stackedBottomNav/app/shared_constants.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/stacked_navigator/stacked_navigator_route.dart';

class StackedNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final NavChoice choice;

  const StackedNavigator({this.navigatorKey, this.choice});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: colorTilePageViewRoute,
      onGenerateRoute: (settings) => StackedNavigatorRoute.generateRoute(settings, context, choice),
    );
  }
}
