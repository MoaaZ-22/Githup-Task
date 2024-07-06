import 'package:flutter/material.dart';
import 'package:githup_app/features/home/presentation/pages/main_screen/widgets/list_view_shape_widget.dart';
import 'package:githup_app/features/home/presentation/widgets/background_image.dart';

/// MainScreenBody is used to manage the Main Screen Body
class MainScreenBody extends StatelessWidget {
  /// MainScreenBody constructor
  const MainScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        BackgroundImage(),
        ListViewShapeWidget(),
      ],
    );
  }
}
