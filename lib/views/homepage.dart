import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/education.dart';
import 'package:portfolio/widgets/card_tile.dart';
import 'package:portfolio/widgets/custom_divider.dart';

import '../widgets/background_image.dart';
import '../widgets/circular_progress.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_title.dart';

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
              Container(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
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
              const Padding(
                padding: EdgeInsets.all(15),
                child: Column(
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
              // cardTile(dynamicSize)
              SizedBox(
                height: dynamicSize * 01.1,
                width: double.maxFinite,
                child: ListView.builder(
                  itemCount: myEducation.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CardTile(
                      screensize: dynamicSize,
                      title: myEducation[index].title,
                      subTitile: myEducation[index].subtitle,
                      year: myEducation[index].year,
                      img: myEducation[index].img,
                    );
                  },
                ),
              ),

              customDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(githubImg),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(instagramImg),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(linkedInImg),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // Card cardTile(dynamicSize) {
  //   return Card(
  //             elevation: 10,
  //             color: Colors.grey.shade800,
  //             shadowColor: Colors.grey,
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(20)),
  //             child: SizedBox(
  //               width: dynamicSize * 0.6,
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 children: [
  //                   CircleAvatar(
  //                     backgroundColor: Colors.transparent,
  //                     backgroundImage: const AssetImage(
  //                       githubImg,
  //                     ),
  //                     radius: dynamicSize * 0.13,
  //                   ),
  //                   Text(
  //                     'Hello',
  //                     style: TextStyle(
  //                         color: Colors.white, fontSize: dynamicSize * 0.1),
  //                   ),
  //                   Padding(
  //                     padding: EdgeInsets.all(dynamicSize * 0.05),
  //                     child: Text(
  //                       'Replace with the actual image URL you want to use, aksdjlaksjdlkasjdlksajldkjsaldkjalksjdlaksjd and customize the text as needed. This code places the CircleAvatar with the image at the top middle of the Card, followed by a Text widget below it. The SizedBox widgets are used to add spacing for better visual alignment. The ClipRRect ensures that the background image conforms to the rounded corner shape of the card.',
  //                       style: TextStyle(
  //                           color: Colors.white,
  //                           fontSize: dynamicSize * 0.05,
  //                           overflow: TextOverflow.ellipsis),
  //                       maxLines: 7,
  //                     ),
  //                   ),
  //                   TextButton(
  //                       onPressed: () {},
  //                       child: Text(
  //                         'Read more>>',
  //                         style: TextStyle(
  //                             color: Colors.deepPurple.shade400,
  //                             fontSize: dynamicSize * 0.05),
  //                       ))
  //                 ],
  //               ),
  //             ),
  //           );
  // }
}
