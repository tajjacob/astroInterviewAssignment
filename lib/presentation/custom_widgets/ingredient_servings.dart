import 'package:flutter/material.dart';

import 'number_button.dart';

class IngredientServings extends StatefulWidget {
  const IngredientServings({Key? key}) : super(key: key);

  @override
  State<IngredientServings> createState() => _IngredientServingsState();
}

class _IngredientServingsState extends State<IngredientServings> {
  num _defaultValue = 1;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Ingredients For',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
      ),
      subtitle: Text(
        '$_defaultValue Servings',
        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
      ),
      trailing: ElegantNumberButton(
        initialValue: _defaultValue,
        minValue: 1,
        maxValue: 50,
        step: 1,
        decimalPlaces: 0,
        onChanged: (value) {
          // get the latest value from here
          setState(() {
            _defaultValue = value;
          });
        },
      ),
    );
  }
}
