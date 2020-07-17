import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

extension NavigationServiceExtensioon on NavigationService {
  Future<dynamic> navigateToUsingGlobalKey(
      GlobalKey<NavigatorState> navStateKey, String routeName,
      {dynamic arguments}) {
    return navStateKey.currentState.pushNamed(routeName, arguments: arguments);
  }
}