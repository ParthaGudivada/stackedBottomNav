import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/app/locator.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_detail/color_detail_view.dart';
import 'package:stacked_services/stacked_services.dart';

class ColorTileCardViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future<dynamic> selected({NavChoice choice, int ofMaterialIndex}) {
    // _navigationService.navigateToUsingGlobalKey(
    //     choice.globalKey(), Routes.colorDetailViewRoute);

    // return _navigationService.navigateTo(colorDetailViewRoute,
    //     arguments: [choice, ofMaterialIndex], id: choice.keyValue());

    return _navigationService.navigateToView(
        ColorDetailView(choice: choice, materialIndex: ofMaterialIndex),
        id: choice.nestedKeyValue());

    //  .navigateTo(colorDetailViewRoute, arguments: [choice, ofMaterialIndex]);
  }
}
