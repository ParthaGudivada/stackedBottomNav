// import 'package:flutter/material.dart';
// import 'package:stackedBottomNav/app/red_router.gr.dart';
// import 'package:stackedBottomNav/app/shared_constants.dart';
// import 'package:stackedBottomNav/color_detail/color_detail_view.dart';
// import 'package:stackedBottomNav/tab_views/red_color_page_view.dart';

// class RedNavigator extends StatelessWidget {
//   final Key nestedKey;
//   const RedNavigator({Key key, this.nestedKey}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//       key: nestedKey,
//       onGenerateRoute: (RouteSettings settings) {
//         final args = settings.arguments;

//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) {
//             switch (settings.name) {
//               case '/':
//                 return RedColorPageView();
//               case redColorPageViewRoute:
//                   return RedColorPageView();
//               case colorDetailViewRoute:
//                 final typedArgs = args as ColorDetailViewArguments ??
//                     ColorDetailViewArguments();
//                 return ColorDetailView(
//                   choice: typedArgs.choice,
//                   materialIndex: typedArgs.materialIndex,
//                 );
//               default:
//                 return RedColorPageView();
//             }
//           },
//         );
//       },
//     );
//   }
// }

//}

import 'package:flutter/material.dart';
import 'package:stackedBottomNav/app/locator.dart';
import 'package:stackedBottomNav/app/shared_constants.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_detail/color_detail_view.dart';
import 'package:stackedBottomNav/tab_views/red_color_page_view.dart';
import 'package:stacked_services/stacked_services.dart';

class RedNavigator extends StatefulWidget {
  RedNavigator({Key key}) : super(key: key);

  @override
  _RedNavigatorState createState() => _RedNavigatorState();
}

class _RedNavigatorState extends State<RedNavigator> {
  final _navigatorService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key:
          _navigatorService.nestedNavigationKey(NavChoice.red.nestedKeyValue()),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            switch (settings.name) {
              case '/':
                return RedColorPageView();
              case redColorPageViewRoute:
                return RedColorPageView();
              case colorDetailViewRoute:
                final typedArgs =
                    settings.arguments as ColorDetailViewArguments;
                return ColorDetailView(
                    choice: typedArgs.choice,
                    materialIndex: typedArgs.materialIndex);
              default:
                return RedColorPageView();
            }
          },
        );
      },
    );
  }
}
