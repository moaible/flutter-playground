import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:playground/components/buttons/decrement_button.dart';
import 'package:playground/components/buttons/increment_button.dart';

Widget incrementButton() => const Center(child: IncrementButton(pressed: null));
Widget decrementButton() => const Center(child: DecrementButton(pressed: null));
