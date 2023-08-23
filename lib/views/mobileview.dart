import 'package:flutter/material.dart';

import '../widgets/complete_circleprogress_widget.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_title.dart';
import '../widgets/education_tiles.dart';
import '../widgets/services_listview.dart';
import 'complete_linearprogress_widget.dart';

class MobileView extends StatelessWidget {
  final double dynamicSize;
  const MobileView({super.key, required this.dynamicSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const customDivider(),
        const customTitle(txt: 'Skills'),
        CompleteCircleWidget(dynamicSize: dynamicSize),
        const customDivider(),
        const customTitle(txt: 'Programming Languages'),
        CompleteLinearProgressWidget(dynamicSize: dynamicSize),
        const customDivider(),
        const customTitle(txt: 'Education'),
        EducationTiles(dynamicSize: dynamicSize),
        const customDivider(),
        const customTitle(txt: 'Services'),
        ServicesListview(dynamicSize: dynamicSize),
      ],
    );
  }
}
