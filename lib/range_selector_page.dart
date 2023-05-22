import 'package:flutter/material.dart';
import 'package:flutter_fundations/randomizer_page.dart';
import 'package:flutter_fundations/range_selector_form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RangeSelectorPage extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();
  RangeSelectorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Range'),
      ),
      body: rangeSelectorForm(formKey, ref),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RandomizerPage(),
              ),
            );
          }
        },
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
