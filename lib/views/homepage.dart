import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/widgets/custom_divider.dart';
import '../widgets/background_image.dart';
import '../widgets/bottom_text.dart';
import '../widgets/circular_progress.dart';
import '../widgets/contact_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_title.dart';
import '../widgets/education_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    dynamic dynamicSize = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  BackgroundImage(), // Display the background image
                  // Display the foreground components
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(txt: 'Services'),
                      CustomButton(txt: 'Experience'),
                      CustomButton(txt: 'Contact'),
                    ],
                  ),
                  const Positioned(
                    top: 120,
                    bottom: 0,
                    left: -120,
                    right: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Discover my amazing \nArtspace',
                          style: TextStyle(fontSize: 26, color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: dynamicSize * 0.45,
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
                                double avatarSize = constraints.maxWidth * 0.2;
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
                  const Text('Usman Tariq',
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                  SizedBox(
                    height: dynamicSize * 0.07,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        'Hello,\nMy name is Usman Tariq Janjua; A Software Engineer and Business Enthusiast from Lahore Pakistan asdnm,amsnd ',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ],
              ),
              const customDivider(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Skills',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(children: [
                  const Expanded(
                    child: AnimatedCircularProgressIndicator(
                        label: 'Web', percentage: 0.6),
                  ),
                  SizedBox(
                    width: dynamicSize * 0.1,
                  ),
                  const Expanded(
                    child: AnimatedCircularProgressIndicator(
                        label: 'C++', percentage: 0.9),
                  ),
                  SizedBox(
                    width: dynamicSize * 0.1,
                  ),
                  const Expanded(
                    child: AnimatedCircularProgressIndicator(
                        label: 'Flutter', percentage: 0.65),
                  ),
                ]),
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
              // Card(
              //   elevation: 10,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(30)),
              //   color: Colors.white70,
              //   child: SizedBox(
              //     height: dynamicSize * 0.7,
              //     child: const Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Image(image: AssetImage(appIcon)),
              //       ],
              //     ),
              //   ),
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        webIcon,
                        color: Colors.deepPurple.shade200,
                        height: dynamicSize * 0.3,
                        width: dynamicSize * 0.3,
                      ),
                      SizedBox(
                        height: dynamicSize * 0.06,
                      ),
                      Text(
                        'Web Development',
                        style: TextStyle(
                            color: Colors.white, fontSize: dynamicSize * 0.05),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        webIcon,
                        color: Colors.deepPurple.shade200,
                        height: dynamicSize * 0.3,
                        width: dynamicSize * 0.3,
                      ),
                      SizedBox(
                        height: dynamicSize * 0.06,
                      ),
                      Text(
                        'Web Development',
                        style: TextStyle(
                            color: Colors.white, fontSize: dynamicSize * 0.05),
                      ),
                    ],
                  )
                ],
              ),

              const customDivider(),
              ContactBar(dynamicSize: dynamicSize),
              const customDivider(),
              const BottomText()
            ],
          ),
        ),
      ),
    );
  }
}
