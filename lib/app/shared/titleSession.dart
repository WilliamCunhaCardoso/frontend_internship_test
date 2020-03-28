import 'package:flutter/material.dart';

class TitleSession extends StatelessWidget {
  final String text;

  const TitleSession({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Text(
        this.text.toUpperCase(),
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
