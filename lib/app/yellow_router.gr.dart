// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stackedBottomNav/tab_views/yellow_color_page_view.dart';

abstract class Routes {
  static const yellowColorPageViewRoute = '/yellow-color-page-view-route';
  static const all = {
    yellowColorPageViewRoute,
  };
}

class YellowRouter extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<YellowRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.yellowColorPageViewRoute:
        if (hasInvalidArgs<YellowColorPageViewArguments>(args)) {
          return misTypedArgsRoute<YellowColorPageViewArguments>(args);
        }
        final typedArgs = args as YellowColorPageViewArguments ??
            YellowColorPageViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => YellowColorPageView(key: typedArgs.key),
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

//YellowColorPageView arguments holder class
class YellowColorPageViewArguments {
  final Key key;
  YellowColorPageViewArguments({this.key});
}
