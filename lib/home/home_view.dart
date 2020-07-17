// import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart';
// import 'package:stackedBottomNav/home/home_view_model.dart';
// import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
// import 'package:stackedBottomNav/navigators/red_navigator_view.dart';
// import 'package:stackedBottomNav/tab_views/green_color_page_view.dart';

// class HomeView extends StatelessWidget {
//   HomeView({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ViewModelBuilder<HomeViewModel>.reactive(
//       builder: (context, viewModel, child) => Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: viewModel.currentIndex,
//           elevation: 2,
//           selectedIconTheme: const IconThemeData(size: 20),
//           selectedItemColor: Colors.purple,
//           unselectedIconTheme: const IconThemeData(size: 20),
//           unselectedItemColor: Colors.black45,
//           showUnselectedLabels: true,
//           items: viewModel.availableItems,
//           onTap: viewModel.setIndex,
//         ),
//         body: SafeArea(
//           top: false,
//           child: getNavigator(viewModel),
//         ),
//       ),
//       viewModelBuilder: () => HomeViewModel(),
//     );
//   }

//   Widget getNavigator(HomeViewModel viewModel) {
//     switch (viewModel.currentChoice) {
//       case NavChoice.red:
//         print('red is ${viewModel.currentNestedKey}');
//         return RedNavigator(
//           nestedKey: viewModel.currentNestedKey,
//         );
//       case NavChoice.green:
//         print('grene is ${viewModel.currentNestedKey}');

//         return GreenNavigator(
//           nestedKey: viewModel.currentNestedKey,
//         );
//       default:
//         return RedNavigator(
//           nestedKey: viewModel.currentNestedKey,
//         );
//     }
//   }
// }
