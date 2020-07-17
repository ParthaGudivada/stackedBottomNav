import 'package:flutter/material.dart';
import 'package:stackedBottomNav/app/locator.dart';
import 'package:stackedBottomNav/app/shared_constants.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_detail/color_detail_view.dart';
import 'package:stackedBottomNav/tab_views/yellow_color_page_view.dart';
import 'package:stacked_services/stacked_services.dart';

class YellowNavigator extends StatefulWidget {
  YellowNavigator({Key key}) : super(key: key);

  @override
  _YellowNavigatorState createState() => _YellowNavigatorState();
}

class _YellowNavigatorState extends State<YellowNavigator> {
  final _navigatorService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorService
          .nestedNavigationKey(NavChoice.blue.nestedKeyValue()),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            switch (settings.name) {
              case '/':
                return YellowColorPageView();
              case yellowColorPageViewRoute:
                return YellowColorPageView();
              case colorDetailViewRoute:
                final typedArgs =
                    settings.arguments as ColorDetailViewArguments;
                return ColorDetailView(
                    choice: typedArgs.choice,
                    materialIndex: typedArgs.materialIndex);
              default:
                return YellowColorPageView();
            }
          },
        );
      },
    );
  }
}
