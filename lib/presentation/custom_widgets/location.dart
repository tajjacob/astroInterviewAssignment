import 'package:flutter/material.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  String dropdownValue = 'Current Location';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 15, 0, 0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Delivering to'),
          DropdownButton<String>(
            value: dropdownValue,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.deepOrange,
            ),
            elevation: 16,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>[
              'Current Location',
              'Home',
              'Work',
              'Favourite Place 1',
              'Favourite Place 2'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
