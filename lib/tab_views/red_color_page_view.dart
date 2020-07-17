import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_tile/color_tile_page_view.dart';
import 'package:stackedBottomNav/tab_views/red_color_page_view_model.dart';

class RedColorPageView extends StatelessWidget {
  const RedColorPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Text('Red');
    return ViewModelBuilder<RedColorPageViewModel>.reactive(
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      builder: (context, viewModel, child) => Column(
        children: [
          AppBar(
            title: Text('Red Color'),
          ),
          Expanded(
            child: ColorTilePageView(
              key: viewModel.choice.pageStorageKey(),
              choice: viewModel.choice,
            ),
          ),
        ],
      ),
      viewModelBuilder: () => RedColorPageViewModel(),
    );
  }
}
