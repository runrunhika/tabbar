import 'package:flutter/material.dart';
import 'package:tabbar_sample/screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Buttons',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            centerTitle: true,
            textTheme: TextTheme(
              headline6: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            iconTheme: IconThemeData(color: Colors.white),
          ),
          primaryColor: Colors.blue,
          scaffoldBackgroundColor: Colors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BasicsPage(),
      );
}