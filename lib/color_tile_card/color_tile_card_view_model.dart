import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/app/locator.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/app/shared_constants.dart';
import 'package:stackedBottomNav/color_detail/color_detail_view.dart';
//
import 'package:stacked_services/stacked_services.dart';

class ColorTileCardViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future<dynamic> selected({NavChoice choice, int ofMaterialIndex}) {
    return _navigationService.navigateTo(
      colorDetailViewRoute,
      arguments: ColorDetailViewArguments(
          choice: choice, materialIndex: ofMaterialIndex),
      id: choice.nestedKeyValue(),
    );
  }
}
