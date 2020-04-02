import 'package:flutter/material.dart';

import 'src/app/pages/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qwkin Test',
      home: HomePage(),
      theme: ThemeData(
        fontFamily: 'Open Sans',
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.deepPurple, size: 40),
          color: Colors.white,
          textTheme: TextTheme(
            headline6: TextStyle(
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
