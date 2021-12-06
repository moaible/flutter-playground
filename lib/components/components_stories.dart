import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:playground/components/buttons/decrement_button.dart';
import 'package:playground/components/buttons/increment_button.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget incrementButton() => const Center(child: IncrementButton(pressed: null));
Widget decrementButton() => const Center(child: DecrementButton(pressed: null));
Widget neumorphicText() => Center(
    child: NeumorphicText("ABCDEFGHIJKLMNOPQRSTUVWXYZ",
        textStyle: NeumorphicTextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 70,
            fontWeight: FontWeight.w800)));
