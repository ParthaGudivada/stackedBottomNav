import 'package:flutter/material.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_tile/color_tile_page_view.dart';

class OrangeColorPageView extends StatelessWidget {
  const OrangeColorPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Text('Orange');
    return ColorTilePageView(
        key: NavChoice.orange.pageStorageKey(), choice: NavChoice.orange);
  }
}
