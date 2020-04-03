import 'package:flutter/material.dart';

class UserListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function function;
  final Widget leading;

  const UserListTile(
      {Key key,
      @required this.title,
      @required this.subtitle,
      this.function,
      this.leading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.function,
      child: Card(
        child: ListTile(
          leading: this.leading,
          title: Text(this.title),
          subtitle: Text(this.subtitle),
        ),
      ),
    );
  }
}
