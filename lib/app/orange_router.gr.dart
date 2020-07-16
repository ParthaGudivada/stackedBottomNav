// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stackedBottomNav/tab_views/orange_color_page_view.dart';

abstract class Routes {
  static const orangeColorPageViewRoute = '/orange-color-page-view-route';
  static const all = {
    orangeColorPageViewRoute,
  };
}

class OrangeRouter extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<OrangeRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
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

//OrangeColorPageView arguments holder class
class OrangeColorPageViewArguments {
  final Key key;
  OrangeColorPageViewArguments({this.key});
}
