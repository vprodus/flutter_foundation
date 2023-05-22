import 'package:flutter/material.dart';
import 'package:flutter_fundations/randomizer_page.dart';
import 'package:flutter_fundations/range_selector_form.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RangeSelectorPage extends HookWidget {
  final formKey = GlobalKey<FormState>();
  RangeSelectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final min = useState<int>(0);
    final max = useState<int>(0);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Range'),
      ),
      body: rangeSelectorForm(
          formKey, (value) => max.value = value, (value) => min.value = value),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    RandomizerPage(min: min.value, max: max.value),
              ),
            );
          }
        },
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
