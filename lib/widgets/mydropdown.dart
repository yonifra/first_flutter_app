import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  @override
  State<MyDropdown> createState() => DropdownState();
}

class DropdownState extends State<MyDropdown> {
  final _currencies = ['Dollars', 'Euro', 'Pounds'];
  String _selectedCurrency = 'Dollars';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: _currencies.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
          key: Key(value),
        );
      }).toList(),
      onChanged: (String c){
        setState(() {
          _selectedCurrency = c;
        });
      },
      value: _selectedCurrency,
    );
  }
}
