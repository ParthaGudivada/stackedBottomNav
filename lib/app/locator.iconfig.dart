// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:stackedBottomNav/services/bottom_nav_service.dart';
import 'package:stackedBottomNav/home/home_view_model.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<BottomNavService>(() => BottomNavService());
  g.registerFactory<HomeViewModel>(() => HomeViewModel());
}
