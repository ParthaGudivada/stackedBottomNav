import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_tile/color_tile_page_view.dart';
import 'package:stackedBottomNav/tab_views/greeen_color_page_view_model.dart';

class GreenColorPageView extends StatelessWidget {
  const GreenColorPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Text('Red');
    return ViewModelBuilder<GreenColorPageViewModel>.reactive(
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      builder: (context, viewModel, child) => Column(
        children: [
          AppBar(
            title: Text('Green Color'),
          ),
          Expanded(
            child: ColorTilePageView(
              key: viewModel.choice.pageStorageKey(),
              choice: viewModel.choice,
            ),
          ),
        ],
      ),
      viewModelBuilder: () => GreenColorPageViewModel(),
    );
  }
}

// class GreenNavigator extends StatelessWidget {
//   final Key nestedKey;

//   const GreenNavigator({Key key, this.nestedKey}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//       onGenerateRoute: (RouteSettings settings) {
//         final args = settings.arguments;
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (context) {
//             switch (settings.name) {
//               case '/':
//                 return GreenColorPageView();
//               case colorDetailViewRoute:
//                 final typedArgs = args as ColorDetailViewArguments ??
//                     ColorDetailViewArguments();
//                 return ColorDetailView(
//                   choice: typedArgs.choice,
//                   materialIndex: typedArgs.materialIndex,
//                 );
//               default:
//                 return GreenColorPageView();
//             }
//           },
//         );
//       },
//     );
//   }
// }
