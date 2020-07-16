// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stackedBottomNav/tab_views/red_color_page_view.dart';

abstract class Routes {
  static const redColorPageViewRoute = '/red-color-page-view-route';
  static const all = {
    redColorPageViewRoute,
  };
}

class RedRouter extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<RedRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.redColorPageViewRoute:
        if (hasInvalidArgs<RedColorPageViewArguments>(args)) {
          return misTypedArgsRoute<RedColorPageViewArguments>(args);
        }
        final typedArgs =
            args as RedColorPageViewArguments ?? RedColorPageViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => RedColorPageView(key: typedArgs.key),
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

//RedColorPageView arguments holder class
class RedColorPageViewArguments {
  final Key key;
  RedColorPageViewArguments({this.key});
}
