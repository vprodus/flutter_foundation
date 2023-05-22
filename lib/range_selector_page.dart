import 'package:flutter/material.dart';
import 'package:flutter_fundations/randomizer_page.dart';
import 'package:flutter_fundations/range_selector_form.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({super.key});

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  final formKey = GlobalKey<FormState>();
  int _min = 0;
  int _max = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Range'),
      ),
      body: rangeSelectorForm(
          formKey, (value) => _max = value, (value) => _min = value),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RandomizerPage(min: _min, max: _max),
              ),
            );
          }
        },
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
