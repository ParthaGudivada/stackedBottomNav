// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stackedBottomNav/tab_views/red_color_page_view.dart';
import 'package:stackedBottomNav/tab_views/green_color_page_view.dart';
import 'package:stackedBottomNav/tab_views/blue_color_page_view.dart';
import 'package:stackedBottomNav/tab_views/yellow_color_page_view.dart';
import 'package:stackedBottomNav/tab_views/orange_color_page_view.dart';

abstract class Routes {
  static const redColorPageViewRoute = '/';
  static const greenColorPageViewRoute = '/green-color-page-view-route';
  static const blueColorPageViewRoute = '/blue-color-page-view-route';
  static const yellowColorPageViewRoute = '/yellow-color-page-view-route';
  static const orangeColorPageViewRoute = '/orange-color-page-view-route';
  static const all = {
    redColorPageViewRoute,
    greenColorPageViewRoute,
    blueColorPageViewRoute,
    yellowColorPageViewRoute,
    orangeColorPageViewRoute,
  };
}

class NestedRouter extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<NestedRouter>();

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
      case Routes.greenColorPageViewRoute:
        if (hasInvalidArgs<GreenColorPageViewArguments>(args)) {
          return misTypedArgsRoute<GreenColorPageViewArguments>(args);
        }
        final typedArgs = args as GreenColorPageViewArguments ??
            GreenColorPageViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => GreenColorPageView(key: typedArgs.key),
          settings: settings,
        );
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
      case Routes.orangeColorPageViewRoute:
        if (hasInvalidArgs<OrangeColorPageViewArguments>(args)) {
          return misTypedArgsRoute<OrangeColorPageViewArguments>(args);
        }
        final typedArgs = args as OrangeColorPageViewArguments ??
            OrangeColorPageViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => OrangeColorPageView(key: typedArgs.key),
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

//GreenColorPageView arguments holder class
class GreenColorPageViewArguments {
  final Key key;
  GreenColorPageViewArguments({this.key});
}

//BlueColorPageView arguments holder class
class BlueColorPageViewArguments {
  final Key key;
  BlueColorPageViewArguments({this.key});
}

//YellowColorPageView arguments holder class
class YellowColorPageViewArguments {
  final Key key;
  YellowColorPageViewArguments({this.key});
}

//OrangeColorPageView arguments holder class
class OrangeColorPageViewArguments {
  final Key key;
  OrangeColorPageViewArguments({this.key});
}
