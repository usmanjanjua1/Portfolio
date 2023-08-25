import 'package:url_launcher/url_launcher.dart';

class CommonFunctions {
  static void launchURL(String link) async {
    final Uri url = Uri.parse(link);
    await launchUrl(url);
  }
}
