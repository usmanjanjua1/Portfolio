import 'package:flutter/material.dart';
import 'package:portfolio/widgets/contact_card.dart';

import '../widgets/complete_circleprogress_widget.dart';
import '../widgets/complete_projects_tab.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_title.dart';
import '../widgets/education_tiles.dart';
import '../widgets/services_listview.dart';
import 'complete_linearprogress_widget.dart';

class WebViewServicesEducation extends StatefulWidget {
  final double dynamicSize;
  const WebViewServicesEducation({super.key, required this.dynamicSize});

  @override
  State<WebViewServicesEducation> createState() =>
      _WebViewServicesEducationState();
}

class _WebViewServicesEducationState extends State<WebViewServicesEducation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //progess indicators
        const customDivider(),
        SizedBox(
          height: widget.dynamicSize * 1,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(flex: 1, child: SizedBox()),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    const customTitle(txt: 'Skills'),
                    Expanded(
                      child: Center(
                          child: CompleteCircleWidget(
                              dynamicSize: widget.dynamicSize)),
                    ),
                  ],
                ),
              ),
              const Expanded(
                  flex: 1,
                  child: VerticalDivider(
                    color: Colors.white,
                  )),
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      const customTitle(txt: 'Programming Languages'),
                      Expanded(
                        child: CompleteLinearProgressWidget(
                            dynamicSize: widget.dynamicSize),
                      ),
                    ],
                  )),
              const Expanded(flex: 1, child: SizedBox()),
            ],
          ),
        ),
        //education and services
        const customDivider(),
        SizedBox(
          height: widget.dynamicSize * 0.8,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(flex: 1, child: SizedBox()),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    const customTitle(txt: 'Education'),
                    Expanded(
                        child: EducationTiles(dynamicSize: widget.dynamicSize)),
                  ],
                ),
              ),
              const Expanded(
                  flex: 1,
                  child: VerticalDivider(
                    color: Colors.white,
                  )),
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      const customTitle(txt: 'Services'),
                      Expanded(
                          child: ServicesListview(
                              dynamicSize: widget.dynamicSize)),
                    ],
                  )),
              const Expanded(flex: 1, child: SizedBox()),
            ],
          ),
        ),

        //contact bar and projects
        const customDivider(),
        SizedBox(
          height: widget.dynamicSize * 0.8,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(flex: 1, child: SizedBox()),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    const customTitle(txt: 'Get In Touch'),
                    Expanded(
                        child: ContactCard(dynamicSize: widget.dynamicSize)),
                  ],
                ),
              ),
              const Expanded(
                  flex: 1,
                  child: VerticalDivider(
                    color: Colors.white,
                  )),
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      const customTitle(txt: 'Projects'),
                      Expanded(
                          child: ProjectsView(
                        dynamicSize: widget.dynamicSize,
                      )),
                    ],
                  )),
              const Expanded(flex: 1, child: SizedBox()),
            ],
          ),
        ),
      ],
    );
  }
}
