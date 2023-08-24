import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/media_query.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/views/complete_linearprogress_widget.dart';
import 'package:portfolio/widgets/complete_circleprogress_widget.dart';
import 'package:portfolio/widgets/contact_card.dart';
import 'package:portfolio/widgets/custom_divider.dart';
import 'package:portfolio/widgets/services_listview.dart';
import '../widgets/background_image.dart';
import '../widgets/bottom_text.dart';
import '../widgets/contact_bar.dart';
import '../widgets/custom_title.dart';
import '../widgets/education_tiles.dart';
import '../widgets/row_buttons.dart';
import 'mobileview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    dynamic dynamicSize = GetScreenSize.getScreenWidth(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Stack(
              children: [
                // BackgroundImage(dynamicSize: dynamicSize),
                BackgroundVideo(dynamicSize: dynamicSize),
                if (Responsive.isDesktop(context) ||
                    Responsive.isTablet(context))
                  webAppBar(dynamicSize),
                Positioned(
                  top: Responsive.isDesktop(context) ? 160 : 80,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'UsmanTariq  Janjua',
                        style: TextStyle(
                          fontSize: Responsive.isDesktop(context)
                              ? dynamicSize * 0.3
                              : dynamicSize * 0.13,
                          color: Colors.white,
                          fontFamily: 'ArtySignature',
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: Responsive.isDesktop(context) ? 570 : 190,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'ENGINEER   - PROGRAMMER -   TECHGEEK',
                        style: TextStyle(
                            fontSize: Responsive.isDesktop(context)
                                ? dynamicSize * 0.027
                                : dynamicSize * 0.013,
                            color: Colors.white,
                            fontFamily: GoogleFonts.montserrat().fontFamily,
                            fontWeight: FontWeight.w100,
                            letterSpacing:
                                Responsive.isDesktop(context) ? 10 : 3),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: Responsive.isDesktop(context) ? 670 : 220,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '⌵',
                        style: TextStyle(
                            fontSize: Responsive.isDesktop(context)
                                ? dynamicSize * 0.04
                                : dynamicSize * 0.017,
                            color: Colors.white,
                            fontFamily: GoogleFonts.montserrat().fontFamily,
                            fontWeight: FontWeight.w100,
                            letterSpacing:
                                Responsive.isDesktop(context) ? 10 : 3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: dynamicSize * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      const Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Center(
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              double avatarSize = dynamicSize * 0.2;
                              return CircleAvatar(
                                radius: avatarSize,
                                backgroundImage: const AssetImage(backImg),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(name,
                    style: TextStyle(
                        color: Colors.white, fontSize: dynamicSize * 0.07),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: dynamicSize * 0.07,
                ),
                Padding(
                  padding: EdgeInsets.all(dynamicSize * 0.02),
                  child: Text(
                    myInfo,
                    style: TextStyle(
                        color: Colors.white, fontSize: dynamicSize * 0.05),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Responsive.isDesktop(context)
                ? webviewOfServicesEducation(dynamicSize)
                : MobileView(dynamicSize: dynamicSize),
            const customDivider(),
            ContactCard(dynamicSize: dynamicSize),
            const customDivider(),
            ContactBar(dynamicSize: dynamicSize),
            const customDivider(),
            BottomText(dynamicSize: dynamicSize)
          ],
        ),
      ),
    );
  }

  Widget webviewOfServicesEducation(dynamicSize) {
    return Column(
      children: [
        const customDivider(),
        SizedBox(
          height: dynamicSize * 1,
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
                          child:
                              CompleteCircleWidget(dynamicSize: dynamicSize)),
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
                            dynamicSize: dynamicSize),
                      ),
                    ],
                  )),
              const Expanded(flex: 1, child: SizedBox()),
            ],
          ),
        ),
        const customDivider(),
        SizedBox(
          height: dynamicSize * 0.8,
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
                    Expanded(child: EducationTiles(dynamicSize: dynamicSize)),
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
                          child: ServicesListview(dynamicSize: dynamicSize)),
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
