import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class ProjectsTile extends StatelessWidget {
  final double screensize;
  final String title;
  final String subTitile;
  final String img;
  final String link;
  const ProjectsTile(
      {super.key,
      required this.screensize,
      required this.title,
      required this.subTitile,
      required this.img,
      required this.link});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      // shadowColor: Colors.cyanAccent,
      color: Colors.cyan.withOpacity(0.16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        width: screensize * 0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              img,
              height: screensize * 0.3,
              width: screensize * 0.3,
            ),
            Text(
              title,
              style:
                  TextStyle(color: Colors.white, fontSize: screensize * 0.065),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screensize * 0.05),
              child: Text(
                subTitile, //project description
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screensize * 0.043,
                    overflow: TextOverflow.fade),
                textAlign: TextAlign.center,
                maxLines: 4,
              ),
            ),
            link.isEmpty
                ? const SizedBox(
                    height: 0.0001,
                  )
                : TextButton(
                    onPressed: () async {
                      String vlink = link;
                      final Uri url = Uri.parse(vlink);
                      await launchUrl(url);
                    },
                    child: Text(
                      'Project Video',
                      style: TextStyle(
                          color: Colors.deepPurple.shade400,
                          fontSize: screensize * 0.04),
                    ))
          ],
        ),
      ),
    );
  }
}
