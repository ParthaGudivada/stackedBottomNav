import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/home/home_view_model.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: Text(viewModel.currentChoice.navTitle()),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: viewModel.currentIndex,
          elevation: 2,
          selectedIconTheme: const IconThemeData(size: 20),
          selectedItemColor: Colors.purple,
          unselectedIconTheme: const IconThemeData(size: 20),
          unselectedItemColor: Colors.black45,
          showUnselectedLabels: true,
          items: viewModel.availableItems.toList(),
          onTap: viewModel.setIndex,
        ),
        body: SafeArea(
          child: Navigator(
            key: viewModel.currentNestedKey,
            initialRoute: viewModel.currentChoice.initialPageRoute(),
            onGenerateRoute: viewModel.currentChoice.onGenerateRoute,
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

//  body: SafeArea(
//           child: StackedNavigator(
//             choice: viewModel.availableChoices[viewModel.currentIndex],
//           ),
//         ),
