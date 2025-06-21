import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'src/main_app.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MainApp());
}
