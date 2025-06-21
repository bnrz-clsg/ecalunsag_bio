import 'dart:html' as html;

import 'package:flutter_dotenv/flutter_dotenv.dart';

class FileDownloadService {
  static void downloadResumeFromDrive({
    String fileName = 'Ebenezer_Calunsag_Resume.pdf',
  }) {
    final String cv_id = dotenv.env['CV_ID'] ?? 'default';
    final String gdrive_url = "https://drive.google.com/uc?export=download&id=";
    final downloadUrl = gdrive_url + cv_id;

    final anchor = html.AnchorElement(href: downloadUrl)
      ..target = 'blank'
      ..download = fileName;

    html.document.body!.append(anchor);
    anchor.click();
    anchor.remove();
  }
}
