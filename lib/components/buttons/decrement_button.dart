import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DecrementButton extends StatelessWidget {
  const DecrementButton({Key? key, required this.pressed}) : super(key: key);
  final VoidCallback? pressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        tooltip: 'Decrement',
        onPressed: pressed,
        child: const Icon(Icons.remove));
  }
}
