import 'dart:async';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  final StreamController _controller = StreamController();

  //addStreamData is first method of using Stream
  addStreamData() async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 2));
      _controller.sink.add(i);
      //data add to stream. data are0 to 10 that make using above for loop
    }
  }

  //addStreamData2 is Second method of using Stream. this method doesn't use cStream controller
  Stream<int> addStreamData2() async* {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 2));
      yield i;
      //for use yield we have to use async* for the function
    }
  }

  //this is for method 1. using this dispose when you go to another page stream controller do not clear memory allocation. so their should be memory leak. app maybe slow down. so using this dispose function when you leave page then release the memory allocations.
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.close();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addStreamData2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Stream Tutorial'),
      ),
      body: Center(
        child: StreamBuilder(
            // stream: _controller.stream, //this is use for method 1
            stream: addStreamData2(), //this is how use stream for method 2
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text('Error Occurred!');
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator.adaptive();
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Stream Item',
                  ),
                  Text(
                    '${snapshot.data}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
