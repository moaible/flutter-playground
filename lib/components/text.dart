import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeuText extends StatelessWidget {
  const NeuText({Key? key, required this.text, required this.size})
      : super(key: key);
  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return NeumorphicText(text,
        // style: const NeumorphicStyle(color: Colors.black26),
        textStyle: NeumorphicTextStyle(
            fontStyle: FontStyle.normal,
            fontSize: size,
            fontWeight: FontWeight.w800));
  }
}
