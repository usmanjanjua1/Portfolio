import 'package:flutter/material.dart';

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
            Text(
              year,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: screensize * 0.035),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screensize * 0.05),
              child: Text(
                subTitile,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: screensize * 0.045,
                    overflow: TextOverflow.fade),
                textAlign: TextAlign.center,
                maxLines: 4,
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Read more>>',
                  style: TextStyle(
                      color: Colors.deepPurple.shade400,
                      fontSize: screensize * 0.045),
                ))
          ],
        ),
      ),
    );
  }
}
