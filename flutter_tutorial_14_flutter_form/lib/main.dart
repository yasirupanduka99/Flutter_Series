import 'package:flutter/material.dart';

import 'form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Form',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const FormScreen(),
    );
  }
}
