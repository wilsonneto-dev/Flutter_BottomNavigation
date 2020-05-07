import 'package:flutter/material.dart';
import 'package:navapp/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testando Navegações',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'Bottom Navigation'),
    );
  }
}
