import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final onChanged;
  final cleaner;
  final Widget icon;

  const Field({
    Key key,
    this.label,
    this.controller,
    this.onChanged, this.cleaner, this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: TextFormField(
        onChanged: this.onChanged,
        controller: this.controller,
        decoration: InputDecoration(
          hintText: this.label,
          suffixIcon: FlatButton(onPressed: ()=> cleaner(), child: Icon(Icons.delete_forever)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        ),
      ),
    );
  }
}
