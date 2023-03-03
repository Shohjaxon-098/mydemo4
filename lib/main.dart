import 'package:flutter/material.dart';
import 'package:mydemo4/pages/home_page.dart';
import 'package:mydemo4/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(
        age: 33,
        name: 'Dart',
      ),
      routes: <String, WidgetBuilder>{
        "/second": ((BuildContext context) => LoginPage(
              name: "Flutter",
              age: 22,
            ))
      },
    );
  }
}
