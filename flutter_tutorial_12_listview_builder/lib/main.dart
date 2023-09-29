import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Tutorial 12'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var items = List<String>.generate(
      100,
      (index) =>
          'Item $index'); //In dart List is Array which is called in java, c++, c

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
          //This list view is best for huge number of lists. this ListView.builder can load particular number of lists for screen.
          scrollDirection: Axis
              .vertical, //default vertical. so you don't need to mention this for vertical scrolling
          itemCount: items.length, //this length get array length
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.brightness_auto),
              title: Text(items[index]),
              subtitle: const Text('Change the Brightness'),
              trailing: const Icon(Icons.menu),
              onTap: () {},
            );
          },
        ));
  }
}
