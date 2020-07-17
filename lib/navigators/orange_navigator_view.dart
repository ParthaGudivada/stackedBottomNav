import 'package:flutter/material.dart';
import 'package:stackedBottomNav/app/locator.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_detail/color_detail_view.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedBottomNav/app/shared_constants.dart';
import 'package:stackedBottomNav/tab_views/orange_color_page_view.dart';

class OrangeNavigator extends StatefulWidget {
  OrangeNavigator({Key key}) : super(key: key);

  @override
  _OrangeNavigatorState createState() => _OrangeNavigatorState();
}

class _OrangeNavigatorState extends State<OrangeNavigator> {
  final _navigatorService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorService
          .nestedNavigationKey(NavChoice.orange.nestedKeyValue()),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            switch (settings.name) {
              case '/':
                return OrangeColorPageView();
              case orangeColorPageViewRoute:
                return OrangeColorPageView();
              case colorDetailViewRoute:
                final typedArgs =
                    settings.arguments as ColorDetailViewArguments;
                return ColorDetailView(
                    choice: typedArgs.choice,
                    materialIndex: typedArgs.materialIndex);
              default:
                return OrangeColorPageView();
            }
          },
        );
      },
    );
  }
}
