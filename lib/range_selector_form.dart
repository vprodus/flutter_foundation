import 'package:flutter/material.dart';

typedef IntValueSetter = void Function(int value);

Form rangeSelectorForm(GlobalKey<FormState> formKey,
    IntValueSetter maxValueSetter, IntValueSetter minValueSetter) {
  return Form(
    key: formKey,
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            rangeSelectorTextFormField('Maximum', maxValueSetter),
            const SizedBox(height: 12),
            rangeSelectorTextFormField('Minimum', minValueSetter),
          ],
        ),
      ),
    ),
  );
}

TextFormField rangeSelectorTextFormField(
    String label, IntValueSetter intValueSetter) {
  return TextFormField(
    decoration: InputDecoration(
      border: const OutlineInputBorder(),
      labelText: label,
    ),
    keyboardType: const TextInputType.numberWithOptions(
      decimal: false,
      signed: true,
    ),
    validator: (value) {
      if (value == null || int.tryParse(value) == null) {
        return 'Must be an integer';
      } else {
        return null;
      }
    },
    onSaved: (newValue) => intValueSetter(int.parse(newValue ?? '')),
  );
}
