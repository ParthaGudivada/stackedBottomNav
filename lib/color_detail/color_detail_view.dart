import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedBottomNav/color_detail/color_detail_view_model.dart';

class ColorDetailView extends StatelessWidget {
  const ColorDetailView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ColorDetailViewModel>.nonReactive(
      builder: (context, viewModel, child) => Center(
        child: Text('Color Detail'),
      ),
      viewModelBuilder: () => ColorDetailViewModel(),
    );
  }
}
