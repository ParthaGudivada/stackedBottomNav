import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/app/shared_constants.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';

class ColorTileCardViewModel extends BaseViewModel {
  // final NavigationService _navigationService = locator<NavigationService>();

  Future<dynamic> selected({NavChoice choice, int ofMaterialIndex}) {
    // _navigationService.navigateToUsingGlobalKey(
    //     choice.globalKey(), Routes.colorDetailViewRoute);

    return choice
        .globalKey()
        .currentState
        .pushNamed(colorDetailViewRoute, arguments: [choice, ofMaterialIndex]);
  }
}
