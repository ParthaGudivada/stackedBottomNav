import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/home/my_home_page_view.dart';
import 'package:stackedBottomNav/my_app/my_app_view_model.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyAppViewModel>.nonReactive(
      builder: (context, viewModel, child) => MaterialApp(
        title: 'Stacked Bottom Navigator',
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        home: MyHomePageView(),
      ),
      viewModelBuilder: () => MyAppViewModel(),
    );
  }
}
