import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CardTile extends StatelessWidget {
  final double screensize;
  final String title;
  final String subTitile;
  final String year;
  final String img;
  const CardTile(
      {super.key,
      required this.screensize,
      required this.title,
      required this.subTitile,
      required this.year,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.grey.shade800,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        width: screensize * 0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                img,
              ),
              radius: screensize * 0.13,
            ),
            Text(
              title,
              style:
                  TextStyle(color: Colors.white, fontSize: screensize * 0.07),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(screensize * 0.05),
              child: Text(
                subTitile,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screensize * 0.05,
                    overflow: TextOverflow.fade),
                maxLines: 7,
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Read more>>',
                  style: TextStyle(
                      color: Colors.deepPurple.shade400,
                      fontSize: screensize * 0.05),
                ))
          ],
        ),
      ),
    );
  }
}
