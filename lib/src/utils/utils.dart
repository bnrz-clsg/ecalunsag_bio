// lib/utils/utils.dart
import 'package:url_launcher/url_launcher.dart';

class Utils {
  static Future<void> launchUrlHelper(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
