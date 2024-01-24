import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/add_data_firestore.dart';
import 'package:portfolio/utils/media_query.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/widgets/custom_divider.dart';
import 'package:provider/provider.dart';
import '../widgets/background_image.dart';
import '../widgets/bottom_text.dart';
import '../widgets/contact_bar.dart';
import 'mobileview.dart';
import 'webview_services_education.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _dataFetched = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!Provider.of<FetchDataProvider>(context).fetched) {
      Provider.of<FetchDataProvider>(context)
          .fetchDataFromFirestore('Usman Tariq');
    }
  }

  @override
  Widget build(BuildContext context) {
    // uploadDataToFirestore();
    dynamic dynamicSize = GetScreenSize.getScreenWidth(context);
    return SafeArea(
      child: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //     onPressed: () {
        //       fetchDataFromFirestore();
        //       print(myservices[0].title);
        //     },
        //     child: Icon(Icons.add)),
        backgroundColor: Colors.black,
        body: Provider.of<FetchDataProvider>(context).fetched
            ? ListView(
                children: [
                  Stack(
                    // video
                    children: [
                      // BackgroundImage(dynamicSize: dynamicSize),
                      BackgroundVideo(dynamicSize: dynamicSize),
                      // if (Responsive.isDesktop(context) ||
                      //     Responsive.isTablet(context))
                      //   webAppBar(dynamicSize),
                      Positioned(
                        top: Responsive.isDesktop(context) ? 160 : 40,
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
                                    : dynamicSize * 0.2,
                                color: Colors.white,
                                fontFamily: 'ArtySignature',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: Responsive.isDesktop(context) ? 570 : 160,
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
                                      : dynamicSize * 0.018,
                                  color: Colors.white,
                                  fontFamily:
                                      GoogleFonts.montserrat().fontFamily,
                                  fontWeight: FontWeight.w100,
                                  letterSpacing:
                                      Responsive.isDesktop(context) ? 10 : 3),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: Responsive.isDesktop(context) ? 670 : 190,
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
                                      : dynamicSize * 0.03,
                                  color: Colors.white,
                                  fontFamily:
                                      GoogleFonts.montserrat().fontFamily,
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
                    // Profile Picture and lines around
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
                                      backgroundImage:
                                          const AssetImage(myProfileImageFinal),
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
                              color: Colors.white,
                              fontSize: dynamicSize * 0.07),
                          textAlign: TextAlign.center),
                      SizedBox(
                        height: dynamicSize * 0.07,
                      ),
                      Padding(
                        padding: EdgeInsets.all(dynamicSize * 0.02),
                        child: Text(
                          myInfo,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: dynamicSize * 0.05),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Responsive.isDesktop(context)
                      ? WebViewServicesEducation(
                          dynamicSize: dynamicSize,
                        )
                      : MobileView(dynamicSize: dynamicSize),
                  const customDivider(),
                  ContactBar(dynamicSize: dynamicSize),
                  const customDivider(),
                  BottomText(dynamicSize: dynamicSize)
                ],
              )
            : const Center(
                child: CircularProgressIndicator(color: Colors.white54)),
      ),
    );
  }
}
