import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => const MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
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
        backgroundColor: Colors.red[600],
        title: const Text('Flutter Tutorial 09 rows and columns'),
      ),
      body: Container(
        color: Colors.pink,
        width: double.infinity,
        margin: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center, //column goes to center in vertical, because in columm main axis in vertical
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //all items are have same spaces in vertically
          crossAxisAlignment: CrossAxisAlignment.center, //crossAxesAlignment means horizontaly alignments in cloumn
          children: [
            const Text(
              "Text 01",
              style: TextStyle(fontSize: 20.0),
            ),
            const Text(
              "Text 02",
              style: TextStyle(fontSize: 20.0),
            ),
            const Text(
              "Text 03",
              style: TextStyle(fontSize: 20.0),
            ),
            Container(
              color: Colors.blue,
              margin: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0
              ),
              child: const Row(
                // mainAxisAlignment: MainAxisAlignment.center, //Row goes to center in horizontally, because in row main axis in horizontal line
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //all items are have same spaces in horizontally
                crossAxisAlignment: CrossAxisAlignment.center, //crossAxesAlignment means vertical alignments in row
                children: [
                  Text(
                    "Row 01",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    "Row 02",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    "Row 03",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
