import 'package:flutter/material.dart';

void main(){
  runApp(const App()); //runApp is Flutter method
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tutorial 10",
      home: HomePage(),
    );
  }
}

//-----Stateful Widget-----

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { //this _HomePageState class is private. _ represent private class in flutter.

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial 10'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed button times',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '$count', //this count variable doesn't update. because this is behaviour of stateless widget.
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: increment, //onPressed need only function. if you write increment() like that then that function run and return data type as void. but this onPressed doesn't need that. it required only function.
          child: const Icon(Icons.add),
      ),
    );
  }

  void increment(){
    setState(() { //this setState came from State package which is extends to _HomePageState private class. so this setState re-run the build method. so if im change the count value. then setState ren run the build method. then screen show the updated count number(updated state).
      count = count + 1;
      print(count);
    });
  }
}




//-----Stateless Widget-----

// class HomePage extends StatelessWidget {
//   HomePage({super.key});
//
//   int count = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Tutorial 10'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'You have pushed button times',
//               style: TextStyle(fontSize: 20.0),
//             ),
//             Text(
//               '$count', //this count variable doesn't update. because this is behaviour of stateless widget.
//               style: Theme.of(context).textTheme.displaySmall,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//           onPressed: increment, //onPressed need only function. if you write increment() like that then that function run and return data type as void. but this onPressed doesn't need that. it required only function.
//           child: const Icon(Icons.add),
//       ),
//     );
//   }
//
//   void increment(){
//     count = count + 1;
//     print(count);
//   }
// }

