import 'package:flutter/material.dart';
import 'package:frontent_internship_test/src/app/pages/pages.dart';
import 'package:frontent_internship_test/src/app/utils/router.dart';

// import 'src/app/pages/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qwkin Test',
      onGenerateRoute: Router.generateRoute,
      initialRoute: Pages.home,
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
