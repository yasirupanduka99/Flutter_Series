import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Tutorial 8"),
      ),
      body: Container( //container takes child property size. but if body doesn't have any thing. then container take body size. Only can use one child. if you use children [] then you can make more.
        padding: const EdgeInsets.all(10.0), //padding means space inside. this EdgeInsets methods can only give the padding and margin in flutter
        margin: const EdgeInsets.all(20), //margin is space outside between two widgets or component or what ever two things.
        transform: Matrix4.rotationZ(0), //This transform give transformation for the container. and Matrix4 class give more transformation abilities.
        alignment: Alignment.bottomRight, //alignment doesn't affect to container. it affect to inside the container items.
        height: 200.0, // if we add height to container. container height goes to that height
        width: double.infinity, //this double.infinity give width to screen width.
        color: Colors.blue,
        child: const Text(
          "Flutter Tutorial 08",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
