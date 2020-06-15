import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/bottom_nav/bottom_nav_element.dart';
import 'package:stackedBottomNav/color_detail/color_detail_view_model.dart';

class ColorDetailView extends StatelessWidget {
  final NavChoice choice;
  final int materialIndex;

  const ColorDetailView({Key key, this.choice, this.materialIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ColorDetailViewModel>.nonReactive(
      builder: (context, viewModel, child) => Center(
        child: Container(
          color: choice.navColor()[materialIndex],
          child: Center(
            child: Text('Color Detail'),
          ),
        ),
      ),
      viewModelBuilder: () => ColorDetailViewModel(),
    );
  }
}
