import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String name = "sahan";

  //passing this function to last class, because class class contain button and when that button click body text and appbar text both should be change. So using stateful class we can re run the builder method. so we can update. so make function in first class and pass it through constructor to last class to update state of both class.
  void changeName(String newName) {
    setState(() {
      name = newName;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Building MainPage');
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Screen2(
        name: name,
        changeName: changeName,
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  Screen2({super.key, required this.name, required this.changeName});
  String name;

  Function changeName;

  @override
  Widget build(BuildContext context) {
    print('Building Screen2');
    return Container(
      child: Screen3(name: name, changeName: changeName),
    );
  }
}

class Screen3 extends StatelessWidget {
  Screen3({super.key, required this.name, required this.changeName});
  String name;

  Function changeName;

  @override
  Widget build(BuildContext context) {
    print('Building Screen3');
    return Container(
      child: Screen4(name: name, changeName: changeName),
    );
  }
}

class Screen4 extends StatelessWidget {
  Screen4({super.key, required this.name, required this.changeName});
  String name;

  Function changeName;

  @override
  Widget build(BuildContext context) {
    print('Building Screen4');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name),
          ElevatedButton(
            onPressed: () {
              changeName('Pasindu');
            },
            child: const Text('Change Data'),
          )
        ],
      ),
    );
  }
}

//But passing this function to first class to all other class. that means all the classes re build just for change two values. we really need first class appbar title and screen 4 body text change. but passing function through all other classes is not good for huge UIs contain app. So next tutorial we will taking about provider package to address the issue. that is good state management.
