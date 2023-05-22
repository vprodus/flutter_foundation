import 'package:flutter/material.dart';
import 'package:flutter_fundations/range_selector_page.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Randomizer',
      home: RangeSelectorPage(),
    );
  }
}
