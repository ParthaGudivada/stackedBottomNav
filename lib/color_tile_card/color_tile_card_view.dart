import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_tile_card/color_tile_card_view_model.dart';

class ColorTileCard extends StatelessWidget {
  final NavChoice choice;
  final int materialIndex;
  const ColorTileCard({Key key, this.choice, this.materialIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ColorTileCardViewModel>.nonReactive(
      builder: (context, viewModel, child) => GestureDetector(
        onTap: () =>
            viewModel.selected(choice: choice, ofMaterialIndex: materialIndex),
        child: Card(
          elevation: 20,
          color: choice.navColor()[materialIndex],
          child: Container(
            height: 200,
            child: Center(
              child: Text('${choice.navTitle()}[$materialIndex]'),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ColorTileCardViewModel(),
    );
  }
}
