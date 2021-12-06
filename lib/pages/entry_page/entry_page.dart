import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:playground/components/buttons/increment_button.dart';
import 'package:playground/components/text.dart';

class EntryPage extends HookWidget {
  const EntryPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    return Scaffold(
        appBar: AppBar(
          title: Center(child: SelectableText(title)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const NeuText(
                  text: "You have pushed the button this many times:",
                  size: 20),
              // const SelectableText(
              //   'You have pushed the button this many times:',
              // ),
              Column(
                children: [
                  NeuText(text: '${counter.value}', size: 50),
                ],
              )
              // SelectableText(
              //   '${counter.value}',
              //   style: Theme.of(context).textTheme.headline1,
              // ),
            ],
          ),
        ),
        floatingActionButton: IncrementButton(pressed: () => counter.value++));
  }
}
