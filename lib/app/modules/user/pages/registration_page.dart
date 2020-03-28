import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  final String title;
  const RegistrationPage({Key key, this.title = "Register New User"})
      : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: <Widget>[
            //* Personal Data
            TextFormField(decoration: InputDecoration(labelText: 'Name',),),
            TextFormField(decoration: InputDecoration(labelText: 'Email'),),
            TextFormField(decoration: InputDecoration(labelText: 'Phone'),),
            TextFormField(decoration: InputDecoration(labelText: 'Date of Birth'),),
            TextFormField(decoration: InputDecoration(labelText: 'CPF'),),
            //* Address Data
            TextFormField(decoration: InputDecoration(labelText: 'CEP'),),
            TextFormField(decoration: InputDecoration(labelText: 'Street'),),
            TextFormField(decoration: InputDecoration(labelText: 'Number'),),
            TextFormField(decoration: InputDecoration(labelText: 'Complement'),),
            TextFormField(decoration: InputDecoration(labelText: 'District'),),
            TextFormField(decoration: InputDecoration(labelText: 'City'),),
            TextFormField(decoration: InputDecoration(labelText: 'State'),),
          ],
        ),
      ),
    );
  }
}
