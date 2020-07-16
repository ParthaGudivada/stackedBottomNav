import 'package:flutter/material.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_tile/color_tile_page_view.dart';

class BlueColorPageView extends StatelessWidget {
  const BlueColorPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Text('Blue');
    return ColorTilePageView(key: NavChoice.blue.pageStorageKey(), choice: NavChoice.blue);
  }
}
