import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

class MainPage extends StatelessWidget {
  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('Building MainPage');
    return ChangeNotifierProvider(
        create: (context) => MyData(),
        builder: (BuildContext context, child) {
          return Scaffold(
            appBar: AppBar(
              title: Consumer<MyData>(
                builder: (context, value, child) {
                  return Text(value.name);
                },
              ),
            ),
            body: Screen2(),
          );
        });
  }
}

class Screen2 extends StatelessWidget {
  Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    print('Building Screen2');
    return Container(
      child: Screen3(),
    );
  }
}

class Screen3 extends StatelessWidget {
  Screen3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('Building Screen3');
    return Container(
      child: Screen4(),
    );
  }
}

class Screen4 extends StatelessWidget {
  Screen4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('Building Screen4');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<MyData>(
            builder: (context, value, child) {
              return Text(value.name);
            },
          ),
          ElevatedButton(
            onPressed: () {
              // Provider.of<MyData>(context, listen: false).changeName('Pasindu');
              context.read<MyData>().changeName(Random()
                  .nextInt(100)
                  .toString()); //This is radom generate numbers
            },
            child: const Text('Change Data'),
          )
        ],
      ),
    );
  }
}

class MyData extends ChangeNotifier {
  String _name = 'Sahan';

  void changeName(String name) {
    _name = name;
    notifyListeners(); //this changethe state. like setState method
  }

  String get name => _name;
}
