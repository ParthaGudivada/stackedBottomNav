import 'package:flutter/material.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_tile/color_tile_page_view.dart';

class YellowColorPageView extends StatelessWidget {
  const YellowColorPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Text('Yellow');
    return ColorTilePageView(choice: NavChoice.yellow);
  }
}
