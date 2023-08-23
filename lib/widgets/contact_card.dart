import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/widgets/alert_dialog.dart';
import 'package:portfolio/widgets/custom_roundbutton.dart';

class ContactCard extends StatelessWidget {
  final double dynamicSize;
  const ContactCard({super.key, required this.dynamicSize});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.cyan.withOpacity(0.16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        height: dynamicSize * 0.7,
        // width: dynamicSize * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              planeAnimatedIcon,
              height: dynamicSize * 0.2,
              width: dynamicSize * 0.2,
            ),
            Text(
              name,
              style:
                  TextStyle(color: Colors.white, fontSize: dynamicSize * 0.04),
              textAlign: TextAlign.center,
            ),
            Text(
              contactDetails,
              style:
                  TextStyle(color: Colors.white, fontSize: dynamicSize * 0.04),
              textAlign: TextAlign.center,
            ),
            CustomTextButton(
              padding: EdgeInsets.all(dynamicSize * 0.024),
              text: 'Contact',
              onTab: () {
                showAlertDialog(context, dynamicSize);
              },
              color: Colors.white,
              fontSize: dynamicSize * 0.04,
              backgroundColor: Colors.white12,
            )
          ],
        ),
      ),
    );
  }
}
