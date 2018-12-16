import 'package:flutter/material.dart';

class MyDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: <String>['Dollars', 'Euro', 'Pounds'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_){},
    );
  }
}
