import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qwkin Test',
      theme: ThemeData(
        fontFamily: 'Open Sans',
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.deepPurple, size: 40),
          color: Colors.white,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
              fontFamily: 'Open Sans',
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      // home: ,
    );
  }
}
