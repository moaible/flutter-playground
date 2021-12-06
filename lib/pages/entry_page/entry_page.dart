import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:playground/components/text.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EntryPage extends HookWidget {
  const EntryPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    return Scaffold(
        // appBar: AppBar(title: NeuText(text: title, size: 40)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "You have pushed the button this many times:",
                style: TextStyle(color: Colors.black38),
              ),
              NeuText(text: '${counter.value}', size: 130),
            ],
          ),
        ),
        floatingActionButton: NeumorphicButton(
            tooltip: "Increment",
            child: const Icon(
              Icons.add,
              color: Colors.green,
              size: 50,
            ),
            onPressed: () => counter.value++));
  }
}
