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
  TextEditingController title =
      TextEditingController(); //this is for body text field 3
  TextEditingController search =
      TextEditingController(); //this is for appbar text field

  @override
  Widget build(BuildContext context) {
    title.text =
        'Text Field 3'; //this are for text field 3 which is has controller.
    String test = title.text; // using this we get data from text field

    search.text = 'Sample Text';

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.text,
          controller: search,
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: () {
                search.text =
                    ''; //If this close icon pressed then text will be set to empty
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            filled: true,
            fillColor: Colors.black12,
            hintText: 'Search...',
            hintStyle: const TextStyle(color: Colors.white70),
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                cursorColor: Colors.black, //blinking cursor color changed
                decoration:
                    const InputDecoration(prefixIcon: Icon(Icons.phone)),
                maxLength: 8,
                style: const TextStyle(color: Colors.black, fontSize: 22.0),
                obscureText:
                    false, //if this true text will show as password like dots.
                keyboardType: TextInputType.number, // This can change keyboard.
                onChanged: (text) {
                  //this text take user inputs to this text  variable. onChanged works when user typing or changing at that moment.
                  print(text);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 8,
                autofocus:
                    true, // if this autofocus enable when this page run app automatically select this textField
                style: const TextStyle(color: Colors.black, fontSize: 22.0),
                obscureText:
                    false, //if this true text will show as password like dots.
                keyboardType: TextInputType.name, // This can change keyboard.
                enabled:
                    true, //if this false you can't type in this text field because it is disabled.
                onSubmitted: (text) {
                  print(text);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                style: const TextStyle(color: Colors.black, fontSize: 22.0),
                controller: title,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
