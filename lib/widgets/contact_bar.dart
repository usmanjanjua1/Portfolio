import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/constants.dart';

class ContactBar extends StatelessWidget {
  final double dynamicSize;
  const ContactBar({super.key, required this.dynamicSize});

  @override
  Widget build(BuildContext context) {
    double staticsize = 0.07;
    return SizedBox(
      width: dynamicSize,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () async {
              // CommonFunctions.launchURL(
              //     'https://www.linkedin.com/in/usman-tariq-janjua-58b504262');
              String link =
                  'https://www.linkedin.com/in/usman-tariq-janjua-58b504262';
              final Uri url = Uri.parse(link);
              await launchUrl(url);
            },
            hoverColor: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
            child: AvatarGlow(
              endRadius: dynamicSize * (staticsize - 0.01),
              glowColor: Colors.white.withOpacity(0.3),
              showTwoGlows: true,
              animate: true,
              child: Image.asset(
                linkedInImg,
                color: Colors.white,
                height: dynamicSize * staticsize,
                width: dynamicSize * staticsize,
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              // CommonFunctions.launchURL('https://github.com/usmanjanjua1');
              String link = 'https://github.com/usmanjanjua1';
              final Uri url = Uri.parse(link);
              await launchUrl(url);
            },
            hoverColor: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
            child: AvatarGlow(
              endRadius: dynamicSize * (staticsize - 0.01),
              glowColor: Colors.white.withOpacity(0.3),
              showTwoGlows: true,
              animate: true,
              child: Image.asset(
                githubImg,
                color: Colors.white,
                height: dynamicSize * staticsize,
                width: dynamicSize * staticsize,
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              // CommonFunctions.launchURL(
              //     'https://twitter.com/teamkhabib?lang=en');
              String link = 'https://twitter.com/teamkhabib?lang=en';
              final Uri url = Uri.parse(link);
              await launchUrl(url);
            },
            hoverColor: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
            child: AvatarGlow(
              endRadius: dynamicSize * (staticsize - 0.01),
              glowColor: Colors.white.withOpacity(0.3),
              showTwoGlows: true,
              animate: true,
              child: Image.asset(
                twitterImg,
                color: Colors.white,
                height: dynamicSize * staticsize,
                width: dynamicSize * staticsize,
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              // CommonFunctions.launchURL(
              //     'https://www.facebook.com/KhabibTheEagle/');
              String link = 'https://www.facebook.com/KhabibTheEagle/';
              final Uri url = Uri.parse(link);
              await launchUrl(url);
            },
            hoverColor: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
            child: AvatarGlow(
              endRadius: dynamicSize * (staticsize - 0.01),
              glowColor: Colors.white.withOpacity(0.3),
              showTwoGlows: true,
              animate: true,
              child: Image.asset(
                facebookImg,
                color: Colors.white,
                height: dynamicSize * staticsize,
                width: dynamicSize * staticsize,
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              // CommonFunctions.launchURL(
              //     'https://www.instagram.com/usman/');
              String link = 'https://www.instagram.com/instagram/';
              final Uri url = Uri.parse(link);
              await launchUrl(url);
            },
            hoverColor: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
            child: AvatarGlow(
              endRadius: dynamicSize * (staticsize - 0.01),
              glowColor: Colors.white.withOpacity(0.3),
              showTwoGlows: true,
              animate: true,
              child: Image.asset(
                instagramImg,
                color: Colors.white,
                height: dynamicSize * staticsize,
                width: dynamicSize * staticsize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
