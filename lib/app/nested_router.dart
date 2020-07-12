import 'package:auto_route/auto_route_annotations.dart';
import 'package:stackedBottomNav/color_detail/color_detail_view.dart';
import 'package:stackedBottomNav/color_tile/color_tile_page_view.dart';
import 'package:stackedBottomNav/home/home_view.dart';

@MaterialAutoRouter()
class $NestedRouter {
  @initial 
  ColorTilePageView colorTilePageViewRoute;

  ColorDetailView colorDetailViewRoute;


  HomeView homeViewRoute;
}