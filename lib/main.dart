import 'package:flutter/material.dart';
import 'package:playground/pages/entry_page/entry_page.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
      title: 'Flutter Demo',
      home: EntryPage(title: 'Flutter & Amplify Demo'),
    );
  }
}
