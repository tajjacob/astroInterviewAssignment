import 'package:flutter/material.dart';

typedef void CounterChangeCallback(num value);

// ignore: must_be_immutable
class ElegantNumberButton extends StatelessWidget {
  final CounterChangeCallback onChanged;

  ElegantNumberButton({
    Key? key,
    required num initialValue,
    required this.minValue,
    required this.maxValue,
    required this.onChanged,
    required this.decimalPlaces,
    this.color,
    this.textStyle,
    this.step = 1,
    this.buttonSizeWidth = 30,
    this.buttonSizeHeight = 25,
  })  : assert(maxValue > minValue),
        assert(initialValue >= minValue && initialValue <= maxValue),
        assert(step > 0),
        selectedValue = initialValue,
        super(key: key);

  ///min value user can pick
  final num minValue;

  ///max value user can pick
  final num maxValue;

  /// decimal places required by the counter
  final int decimalPlaces;

  ///Currently selected integer value
  num selectedValue;

  /// if min=0, max=5, step=3, then items will be 0 and 3.
  final num step;

  /// indicates the color of fab used for increment and decrement
  Color? color;

  /// text syle
  TextStyle? textStyle;

  final double buttonSizeWidth, buttonSizeHeight;

  void _incrementCounter() {
    if (selectedValue + step <= maxValue) {
      onChanged((selectedValue + step));
    }
  }

  void _decrementCounter() {
    if (selectedValue - step >= minValue) {
      onChanged((selectedValue - step));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        MaterialButton(
          padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
          shape: const CircleBorder(),
          color: Colors.deepOrange,
          // padding: EdgeInsets.all(20),
          onPressed: _incrementCounter,
          child: const Icon(
            Icons.add,
            size: 20,
            color: Colors.white,
          ),
        ),
        Text('${num.parse((selectedValue).toStringAsFixed(decimalPlaces))}',
            style: const TextStyle(
              fontSize: 20.0,
            )),
        MaterialButton(
          padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
          shape: const CircleBorder(),
          color: Colors.deepOrange,
          // padding: EdgeInsets.all(20),
          onPressed: _decrementCounter,
          child: const Icon(
            Icons.remove,
            size: 20,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
