import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_bar_view_model.dart';

class BottomNavBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavBarViewModel>.reactive(
      builder: (context, viewModel, child) => BottomNavigationBar(
          currentIndex: viewModel.selectedIndex,
          elevation: 2,
          selectedIconTheme: const IconThemeData(size: 20),
          selectedItemColor: Colors.purple,
          unselectedIconTheme: const IconThemeData(size: 20),
          unselectedItemColor: Colors.black45,
          showUnselectedLabels: true,
          items: viewModel.availableItems.toList(),
          onTap: (int index) {
            viewModel.tappedIndex(index);
          }),
      viewModelBuilder: () => BottomNavBarViewModel(),
      onModelReady: (viewModel) => viewModel.tappedIndex(0),
      disposeViewModel: false,
    );
  }
}
