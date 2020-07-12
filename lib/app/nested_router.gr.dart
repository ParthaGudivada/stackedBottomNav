// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stackedBottomNav/color_tile/color_tile_page_view.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_detail/color_detail_view.dart';
import 'package:stackedBottomNav/home/home_view.dart';

abstract class Routes {
  static const colorTilePageViewRoute = '/';
  static const colorDetailViewRoute = '/color-detail-view-route';
  static const homeViewRoute = '/home-view-route';
  static const all = {
    colorTilePageViewRoute,
    colorDetailViewRoute,
    homeViewRoute,
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
      case Routes.colorTilePageViewRoute:
        if (hasInvalidArgs<ColorTilePageViewArguments>(args)) {
          return misTypedArgsRoute<ColorTilePageViewArguments>(args);
        }
        final typedArgs =
            args as ColorTilePageViewArguments ?? ColorTilePageViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              ColorTilePageView(key: typedArgs.key, choice: typedArgs.choice),
          settings: settings,
        );
      case Routes.colorDetailViewRoute:
        if (hasInvalidArgs<ColorDetailViewArguments>(args)) {
          return misTypedArgsRoute<ColorDetailViewArguments>(args);
        }
        final typedArgs =
            args as ColorDetailViewArguments ?? ColorDetailViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => ColorDetailView(
              key: typedArgs.key,
              choice: typedArgs.choice,
              materialIndex: typedArgs.materialIndex),
          settings: settings,
        );
      case Routes.homeViewRoute:
        if (hasInvalidArgs<HomeViewArguments>(args)) {
          return misTypedArgsRoute<HomeViewArguments>(args);
        }
        final typedArgs = args as HomeViewArguments ?? HomeViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomeView(key: typedArgs.key),
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

//ColorTilePageView arguments holder class
class ColorTilePageViewArguments {
  final Key key;
  final NavChoice choice;
  ColorTilePageViewArguments({this.key, this.choice});
}

//ColorDetailView arguments holder class
class ColorDetailViewArguments {
  final Key key;
  final NavChoice choice;
  final int materialIndex;
  ColorDetailViewArguments({this.key, this.choice, this.materialIndex});
}

//HomeView arguments holder class
class HomeViewArguments {
  final Key key;
  HomeViewArguments({this.key});
}
