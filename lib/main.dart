import 'package:flutter/material.dart';
import 'package:stackedBottomNav/app/locator.dart';
import 'package:stackedBottomNav/my_app/my_app_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}
