import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/app/locator.dart';
import 'package:stackedBottomNav/home/my_home_page_view_model.dart';
import 'package:stackedBottomNav/navigators/blue_navigator_view.dart';
import 'package:stackedBottomNav/navigators/green_navigator_view.dart';
import 'package:stackedBottomNav/navigators/orange_navigator_view.dart';
import 'package:stackedBottomNav/navigators/red_navigator_view.dart';
import 'package:stackedBottomNav/navigators/yellow_navigator_view.dart';

class MyHomePageView extends StatelessWidget {
  const MyHomePageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyHomePageViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: viewModel.currentIndex,
          elevation: 2,
          selectedIconTheme: const IconThemeData(size: 20),
          selectedItemColor: Colors.purple,
          unselectedIconTheme: const IconThemeData(size: 20),
          unselectedItemColor: Colors.black45,
          showUnselectedLabels: true,
          items: viewModel.availableItems,
          onTap: viewModel.setIndex,
        ),
        body: SafeArea(
          top: false,
          child: IndexedStack(
            index: viewModel.currentIndex,
            children: [
              RedNavigator(),
              GreenNavigator(),
              BlueNavigator(),
              YellowNavigator(),
              OrangeNavigator(),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => locator<MyHomePageViewModel>(),
    );
  }
}

// import 'package:stackedBottomNav/navigators/red_navigator_view.dart';

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.book),
//               title: Text('Red'),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.free_breakfast),
//               title: Text('Green'),
//             ),
//           ],
//           currentIndex: _selectedIndex,
//           onTap: (index) {
//             setState(() {
//               _selectedIndex = index;
//             });
//           }),
//       body: SafeArea(
//         top: false,
//         child: IndexedStack(
//           index: _selectedIndex,
//           children: [
//             RedNavigator(),
//             GreenNavigator(),
//           ],
//         ),
//       ),
//     );
//   }
// }
