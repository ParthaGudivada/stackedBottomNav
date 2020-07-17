import 'package:flutter/material.dart';
import 'package:stackedBottomNav/app/locator.dart';
import 'package:stackedBottomNav/app/shared_constants.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_detail/color_detail_view.dart';
import 'package:stackedBottomNav/tab_views/green_color_page_view.dart';
import 'package:stacked_services/stacked_services.dart';

class GreenNavigator extends StatefulWidget {
  GreenNavigator({Key key}) : super(key: key);

  @override
  _GreenNavigatorState createState() => _GreenNavigatorState();
}

class _GreenNavigatorState extends State<GreenNavigator> {
  final _navigatorService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorService
          .nestedNavigationKey(NavChoice.green.nestedKeyValue()),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            switch (settings.name) {
              case '/':
                return GreenColorPageView();
              case colorDetailViewRoute:
                final typedArgs =
                    settings.arguments as ColorDetailViewArguments;
                return ColorDetailView(
                    choice: typedArgs.choice,
                    materialIndex: typedArgs.materialIndex);
              default:
                return GreenColorPageView();
            }
          },
        );
      },
    );
  }
}
