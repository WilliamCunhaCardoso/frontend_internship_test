import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  final Color colors;
  final bool functionEnable;
  final Function function;
  final Function router;

  const CustomBottomSheet(
      {Key key, this.colors, this.functionEnable, this.function, this.router})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.colors, //* color switches between disabled and enabled
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        child: Row(
          children: <Widget>[
            Expanded(flex: 3, child: Icon(Icons.check)),
            Expanded(
              flex: 100, //* to try put it in the middle
              child: Text(
                'register user'.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
        onTap: functionEnable
            ? () {
                function(); //* add user
                router(); //* pops out
              }
            : null,
      ),
    );
  }
}
