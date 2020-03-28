import 'package:flutter/material.dart';

class InfoFields extends StatelessWidget {
  final String description;
  final value;

  const InfoFields({Key key, this.description, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(prefixText: description),
      readOnly: true,
      initialValue: value,
      style: TextStyle(fontWeight: FontWeight.w700),
      textAlign: TextAlign.end,
    );
  }
}
