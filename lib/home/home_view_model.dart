import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/app/locator.dart';
import 'package:stackedBottomNav/services/bottom_nav_service.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';

@injectable
class HomeViewModel extends ReactiveViewModel {
  final _bottomNavService = locator<BottomNavService>();

  int get selectedIndex => _bottomNavService.index;

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_bottomNavService];

  List<NavChoice> get availableChoices => _bottomNavService.availableChoices;
}
