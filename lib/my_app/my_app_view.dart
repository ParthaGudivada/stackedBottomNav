import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/app/locator.dart';
import 'package:stackedBottomNav/my_app/my_app_view_model.dart';
import 'package:stackedBottomNav/app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      builder: (context, viewModel, child) => MaterialApp(
        title: 'Stacked Bottom Navigator',
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        initialRoute: Routes.homeViewRoute,
        onGenerateRoute: Router().onGenerateRoute,
        navigatorKey: locator<NavigationService>().navigatorKey,
      ),
      viewModelBuilder: () => MyAppViewModel(),
    );
  }
}
