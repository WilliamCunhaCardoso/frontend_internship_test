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
            TextFormField(decoration: InputDecoration(labelText: 'Name', border: OutlineInputBorder()),),
            TextFormField(decoration: InputDecoration(labelText: 'Email',border: OutlineInputBorder()),),
            TextFormField(decoration: InputDecoration(labelText: 'Phone',border: OutlineInputBorder()),),
            TextFormField(decoration: InputDecoration(labelText: 'Date of Birth',border: OutlineInputBorder()),),
            TextFormField(decoration: InputDecoration(labelText: 'CPF',border: OutlineInputBorder()),),
            //* Address Data
            TextFormField(decoration: InputDecoration(labelText: 'CEP',border: OutlineInputBorder()),),
            TextFormField(decoration: InputDecoration(labelText: 'Street',border: OutlineInputBorder()),),
            TextFormField(decoration: InputDecoration(labelText: 'Number',border: OutlineInputBorder()),),
            TextFormField(decoration: InputDecoration(labelText: 'Complement',border: OutlineInputBorder()),),
            TextFormField(decoration: InputDecoration(labelText: 'District',border: OutlineInputBorder()),),
            TextFormField(decoration: InputDecoration(labelText: 'City',border: OutlineInputBorder()),),
            TextFormField(decoration: InputDecoration(labelText: 'State',border: OutlineInputBorder()),),
          ],
        ),
      ),
    );
  }
}
