import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton({Key? key, required this.pressed}) : super(key: key);
  final VoidCallback? pressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        tooltip: 'Increment', onPressed: pressed, child: const Icon(Icons.add));
  }
}
