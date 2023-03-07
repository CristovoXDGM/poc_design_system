import 'package:flutter/material.dart';

import 'package:pocdesignsystem/pocdesignsystem.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(name: 'Exa WidgetBook'),
      categories: [
        WidgetbookCategory(name: 'Buttons', widgets: [
          WidgetbookComponent(
            name: 'ExaIconButton',
            useCases: [
              WidgetbookUseCase(
                name: 'Temp',
                builder: (context) => const MyHomePage(title: 'title'),
              )
            ],
          ),
        ]),
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light theme',
          data: PocThemes().lightTheme,
        )
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExaIconButton(
              onPressed: _incrementCounter,
              icon: const Icon(Icons.plus_one),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ExaPrimaryButton(
              onPressed: () {},
              text: 'Cristovão',
            ),
            const SizedBox(height: 8),
            ExaPrimaryButton(
              onPressed: () {},
              prefixIcon: const Icon(Icons.save),
              iconText: const Icon(Icons.circle),
              sufixIcon: const Icon(Icons.chevron_right),
              text: 'Cristovão',
            ),
            const SizedBox(height: 8),
            ExaSecondaryButton(
              onPressed: () {},
              text: 'Cristovão',
            ),
          ],
        ),
      ),
    );
  }
}
