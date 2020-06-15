import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stackedBottomNav/app/shared_constants.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_detail/color_detail_view.dart';
import 'package:stackedBottomNav/color_tile/color_tile_page_view.dart';

class StackedNavigatorRoute {
  static generateRoute(
      RouteSettings settings, BuildContext context, NavChoice choice) {
    //final args = settings.arguments;

    switch (settings.name) {
      case colorTilePageViewRoute:
        // final typedArgs = args as ColorTilePageViewArguments ??
        //     ColorTilePageViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              ColorTilePageView(key: choice.pageStorageKey(), choice: choice),
          settings: settings,
        );
      case colorDetailViewRoute:
        final typedArgs = settings.arguments as List<dynamic>;

        return MaterialPageRoute<dynamic>(
          builder: (context) => ColorDetailView(
            choice: typedArgs[0],
            materialIndex: typedArgs[1],
          ),
        );

      default:
        return unknownRoutePage(settings.name);
    }
  }
}

class ColorDetailViewArguments {
  final Key key;
  final NavChoice choice;
  final int materialIndex;

  ColorDetailViewArguments({this.key, this.choice, this.materialIndex});
}
