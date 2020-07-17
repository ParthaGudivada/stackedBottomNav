import 'package:flutter/material.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_tile/color_tile_page_view.dart';

class RedColorPageView extends StatelessWidget {
  const RedColorPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Text('Red');
    return ColorTilePageView(
        key: NavChoice.red.pageStorageKey(), choice: NavChoice.red);
  }
}
