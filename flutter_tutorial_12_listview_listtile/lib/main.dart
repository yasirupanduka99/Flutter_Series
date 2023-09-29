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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          //This list view is best for small list. if you create huge number of list using this list view. then there maybe 10 tiles show in screen but all other tiles are also loaded so memory wasting for that.
          scrollDirection: Axis
              .vertical, //default vertical. so you don't need to mention this for vertical scrolling
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.brightness_auto),
              title: const Text('Brightness Auto'),
              subtitle: const Text('Change the Brightness'),
              trailing: const Icon(Icons.menu),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text('Change Image'),
              subtitle: const Text('Change the Image'),
              trailing: const Icon(Icons.menu),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.keyboard),
              title: const Text('Keyboard Layout'),
              subtitle: const Text('Change the Keyboard Layout'),
              trailing: const Icon(Icons.menu),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.ice_skating),
              title: const Text('Ring Option'),
              subtitle: const Text('Change the Ring Option'),
              trailing: const Icon(Icons.menu),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              subtitle: const Text('Change Settings'),
              trailing: const Icon(Icons.menu),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.near_me),
              title: const Text('Near'),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.backup),
              title: const Text('Backups'),
              onTap: () {},
            ),
          ],
        ));
  }
}
