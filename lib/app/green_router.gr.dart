// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stackedBottomNav/tab_views/green_color_page_view.dart';

abstract class Routes {
  static const greenColorPageViewRoute = '/green-color-page-view-route';
  static const all = {
    greenColorPageViewRoute,
  };
}

class GreenRouter extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<GreenRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
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
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//GreenColorPageView arguments holder class
class GreenColorPageViewArguments {
  final Key key;
  GreenColorPageViewArguments({this.key});
}
