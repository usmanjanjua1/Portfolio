import 'package:flutter/material.dart';

import '../widgets/complete_circleprogress_widget.dart';
import '../widgets/complete_projects_tab.dart';
import '../widgets/contact_card.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_title.dart';
import '../widgets/education_tiles.dart';
import '../widgets/services_listview.dart';
import 'complete_linearprogress_widget.dart';

class MobileView extends StatefulWidget {
  final double dynamicSize;
  const MobileView({super.key, required this.dynamicSize});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const customDivider(),
        const customTitle(txt: 'Skills'),
        CompleteCircleWidget(dynamicSize: widget.dynamicSize),
        const customDivider(),
        const customTitle(txt: 'Programming Languages'),
        CompleteLinearProgressWidget(dynamicSize: widget.dynamicSize),
        const customDivider(),
        const customTitle(txt: 'Education'),
        EducationTiles(dynamicSize: widget.dynamicSize),
        const customDivider(),
        const customTitle(txt: 'Services'),
        ServicesListview(dynamicSize: widget.dynamicSize),
        const customDivider(),
        ProjectsView(dynamicSize: widget.dynamicSize),
        const customDivider(),
        ContactCard(dynamicSize: widget.dynamicSize),
      ],
    );
  }
}
