import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:playground/components/buttons/decrement_button.dart';

class SecondPage extends HookWidget {
  const SecondPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final counter = useState(100);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: SelectableText(title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SelectableText(
              'You have pushed the button this many times:',
            ),
            SelectableText(
              '${counter.value}',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: DecrementButton(
        pressed: () => counter.value--,
      ),
    );
  }
}
