// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:stackedBottomNav/services/bottom_nav_service.dart';
import 'package:stackedBottomNav/home/home_view_model.dart';
import 'package:stackedBottomNav/services/third_party_service.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final thirdPartyService = _$ThirdPartyService();
  g.registerLazySingleton<BottomNavService>(() => BottomNavService());
  g.registerFactory<HomeViewModel>(() => HomeViewModel());
  g.registerLazySingleton<NavigationService>(
      () => thirdPartyService.navigationService);
}

class _$ThirdPartyService extends ThirdPartyService {
  @override
  NavigationService get navigationService => NavigationService();
}
