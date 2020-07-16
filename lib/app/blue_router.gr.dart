// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stackedBottomNav/tab_views/blue_color_page_view.dart';

abstract class Routes {
  static const blueColorPageViewRoute = '/blue-color-page-view-route';
  static const all = {
    blueColorPageViewRoute,
  };
}

class BlueRouter extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<BlueRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.blueColorPageViewRoute:
        if (hasInvalidArgs<BlueColorPageViewArguments>(args)) {
          return misTypedArgsRoute<BlueColorPageViewArguments>(args);
        }
        final typedArgs =
            args as BlueColorPageViewArguments ?? BlueColorPageViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => BlueColorPageView(key: typedArgs.key),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//BlueColorPageView arguments holder class
class BlueColorPageViewArguments {
  final Key key;
  BlueColorPageViewArguments({this.key});
}
