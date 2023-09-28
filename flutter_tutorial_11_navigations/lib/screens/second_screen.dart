import 'package:flutter/material.dart';
import 'home_page.dart';

class SecondScreen extends StatelessWidget {

  String text; //global variable or class level variable

  SecondScreen(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context,const MyHomePage(title: ''));
            },
            icon: const Icon(Icons.home)
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
