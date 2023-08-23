import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/media_query.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/custom_divider.dart';
import '../models/myservices.dart';
import '../widgets/background_image.dart';
import '../widgets/bottom_text.dart';
import '../widgets/circular_progress.dart';
import '../widgets/contact_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_title.dart';
import '../widgets/education_tiles.dart';
import '../widgets/row_buttons.dart';

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
                BackgroundImage(
                    dynamicSize: dynamicSize), // Display the background image
                // Display the foreground components
                if (Responsive.isDesktop(context) &&
                    Responsive.isTablet(context))
                  webAppBar(dynamicSize),
                Positioned(
                  top: 120,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Discover my amazing \nArtspace',
                        style: TextStyle(
                            fontSize: dynamicSize * 0.1, color: Colors.white),
                      ),
                    ],
                  ),
                )
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
                                backgroundImage: const AssetImage(backImg2),
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
                Text('Usman Tariq',
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
            const customDivider(),
            const customTitle(txt: 'Skills'),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: dynamicSize * 0.1, horizontal: dynamicSize * 0.1),
              child: SizedBox(
                height: dynamicSize * 0.35,
                width: double.maxFinite,
                child: Row(children: [
                  Expanded(
                    child: AnimatedCircularProgressIndicator(
                        dynamicSize: dynamicSize,
                        label: 'Web',
                        percentage: 0.6),
                  ),
                  SizedBox(
                    width: dynamicSize * 0.1,
                  ),
                  Expanded(
                    child: AnimatedCircularProgressIndicator(
                        dynamicSize: dynamicSize,
                        label: 'C++',
                        percentage: 0.9),
                  ),
                  SizedBox(
                    width: dynamicSize * 0.1,
                  ),
                  Expanded(
                    child: AnimatedCircularProgressIndicator(
                        dynamicSize: dynamicSize,
                        label: 'Flutter',
                        percentage: 0.65),
                  ),
                ]),
              ),
            ),
            const customDivider(),
            const customTitle(txt: 'Programming Languages'),
            Padding(
              padding: EdgeInsets.all(dynamicSize * 0.07),
              child: const Column(
                children: [
                  AnimatedLinearProgressIndicator(
                      percentage: 0.9, label: 'C++'),
                  AnimatedLinearProgressIndicator(
                      percentage: 0.8, label: 'HTML'),
                  AnimatedLinearProgressIndicator(
                      percentage: 0.6, label: 'CSS'),
                  AnimatedLinearProgressIndicator(
                      percentage: 0.3, label: 'Kotlin'),
                  AnimatedLinearProgressIndicator(
                      percentage: 0.7, label: 'Dart'),
                ],
              ),
            ),
            const customDivider(),
            const customTitle(txt: 'Education'),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: dynamicSize * 0.01,
                    vertical: dynamicSize * 0.02),
                child: EducationTiles(dynamicSize: dynamicSize)),
            const customDivider(),
            const customTitle(txt: 'Services'),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: dynamicSize * 0.6,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: dynamicSize * 0.06),
                      child: Card(
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              myservices[index].image,
                              color: Colors.cyan.withOpacity(0.35),
                              height: dynamicSize * 0.3,
                              width: dynamicSize * 0.3,
                            ),
                            SizedBox(
                              height: dynamicSize * 0.06,
                            ),
                            Text(
                              myservices[index].title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: dynamicSize * 0.05),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: myservices.length,
                ),
              ),
            ),
            const customDivider(),
            ContactBar(dynamicSize: dynamicSize),
            const customDivider(),
            BottomText(dynamicSize: dynamicSize)
          ],
        ),
      ),
    );
  }
}
