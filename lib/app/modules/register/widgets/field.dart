import 'package:flutter/material.dart';

class Field extends StatefulWidget {
  //* Declaration
  final String label;
  final TextEditingController controller;
  final Function onChanged;
  final VoidCallback cleaner;
  final bool visible;

  //* Constructor
  const Field({
    Key key,
    this.label,
    this.controller,
    this.onChanged,
    this.cleaner,
    this.visible,
  }) : super(key: key);

  @override
  _FieldState createState() => _FieldState();
}

class _FieldState extends State<Field> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8), //* to give some space to this widget
      child: TextFormField(
        onChanged: this.widget.onChanged, //* function that saves the value
        controller: this.widget.controller, //* controller parametrized
        decoration: InputDecoration(
          hintText: this.widget.label,
          suffixIcon: FlatButton(
            onPressed: widget.cleaner, //* function that cleans the controller
            child: Visibility(
              visible: this.widget.visible, //* hide and show the icon to clean controller
              child: Icon(Icons.delete_forever),
            ),
          ),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        ),
      ),
    );
  }
}
