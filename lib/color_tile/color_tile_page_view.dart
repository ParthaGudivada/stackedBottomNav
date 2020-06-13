import 'package:flutter/material.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_tile/color_tile_page_view_model.dart';
import 'package:stacked/stacked.dart';

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

class ColorTileCard extends StatelessWidget {
  final NavChoice choice;
  final int materialIndex;
  const ColorTileCard({Key key, this.choice, this.materialIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: choice.navColor()[materialIndex],
      child: Container(
        height: 200,
        child: Center(
          child: Text('${choice.navTitle()}[$materialIndex]'),
        ),
      ),
    );
  }
}
