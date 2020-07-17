import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';

import 'package:stackedBottomNav/color_tile/color_tile_page_view.dart';
import 'package:stackedBottomNav/tab_views/blue_color_page_view_model.dart';

class BlueColorPageView extends StatelessWidget {
  const BlueColorPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Text('Red');
    return ViewModelBuilder<BlueColorPageViewModel>.reactive(
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      builder: (context, viewModel, child) => Column(
        children: [
          AppBar(
            title: Text(viewModel.choice.navTitle()),
          ),
          Expanded(
            child: ColorTilePageView(
              key: viewModel.choice.pageStorageKey(),
              choice: viewModel.choice,
            ),
          ),
        ],
      ),
      viewModelBuilder: () => BlueColorPageViewModel(),
    );
  }
}
