import 'dart:html' as html;

class FileDownloadService {
  static void downloadResumeFromDrive({
    String fileName = 'Ebenezer_Calunsag_Resume.pdf',
  }) {
    final downloadUrl =
        "https://drive.google.com/uc?export=download&id=1QG39VvlzSrnr9AE4YEBlKlPheKN5m9Hb";

    final anchor = html.AnchorElement(href: downloadUrl)
      ..target = 'blank'
      ..download = fileName;

    html.document.body!.append(anchor);
    anchor.click();
    anchor.remove();
  }
}
