import 'package:flutter/material.dart';
import 'package:stackedBottomNav/app/locator.dart';
import 'package:stackedBottomNav/app/shared_constants.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_detail/color_detail_view.dart';
import 'package:stackedBottomNav/tab_views/blue_color_page_view.dart';
import 'package:stacked_services/stacked_services.dart';

class BlueNavigator extends StatefulWidget {
  BlueNavigator({Key key}) : super(key: key);

  @override
  _BlueNavigatorState createState() => _BlueNavigatorState();
}

class _BlueNavigatorState extends State<BlueNavigator> {
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
                return BlueColorPageView();
              case blueColorPageViewRoute:
                return BlueColorPageView();
              case colorDetailViewRoute:
                final typedArgs =
                    settings.arguments as ColorDetailViewArguments;
                return ColorDetailView(
                    choice: typedArgs.choice,
                    materialIndex: typedArgs.materialIndex);
              default:
                return BlueColorPageView();
            }
          },
        );
      },
    );
  }
}
