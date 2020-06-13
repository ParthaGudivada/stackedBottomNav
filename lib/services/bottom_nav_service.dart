import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';

@lazySingleton
class BottomNavService with ReactiveServiceMixin {
  final RxValue<int> _index = RxValue<int>(initial: 0);

  int get index => _index.value;

  BottomNavService() {
    listenToReactiveValues([_index]);
  }

  void tappedIndex(int selectedIndex) {
    _index.value = selectedIndex;
  }

  List<NavChoice> get availableChoices => [
        NavChoice.red,
        NavChoice.green,
        NavChoice.blue,
        NavChoice.yellow,
        NavChoice.orange
      ];
}
