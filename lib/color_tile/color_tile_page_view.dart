import 'package:flutter/material.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_tile/color_tile_page_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/color_tile_card/color_tile_card_view.dart';

class ColorTilePageView extends StatelessWidget {
  final NavChoice choice;

  const ColorTilePageView({Key key, this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ColorTilePageViewModel>.nonReactive(
      builder: (context, viewModel, child) => ListView.builder(
        itemCount: viewModel.availableMaterialIndices.length,
        itemBuilder: (context, index) => ColorTileCard(
          choice: choice,
          materialIndex: viewModel.availableMaterialIndices[index],
        ),
      ),
      viewModelBuilder: () => ColorTilePageViewModel(),
    );
  }
}