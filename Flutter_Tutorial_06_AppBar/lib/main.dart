import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

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
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    double bodytextWidth = MediaQuery.of(context).size.width * 0.90;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shikamaru Nara", style: TextStyle(color: Colors.white),),
        leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.menu)
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search)
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.more_vert)
          ),
        ],
        flexibleSpace: Image.asset("assests/rt.jpg", fit: BoxFit.cover,),
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.red,
          width: bodytextWidth,
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
          child: Column(
            children: [
              Image.asset("assests/shikamaru.png"),
              const Text(
                "\n\nShikamaru Nara (奈良シカマル, Nara Shikamaru) is a shinobi of Konohagakure's Nara clan. Though lazy by nature, Shikamaru has a rare intellect that consistently allows him to prevail in combat. The responsibilities that these successes leave him with cause him frequent annoyance, but he gladly accepts them so that he may be of service to his fellow members of Team Asuma, and to prove himself to generations of the past and future. As an adult, he served as chief aide to Naruto when he became the Seventh Hokage, before succeeding him as Eighth Hokage (八代目火影, Hachidaime Hokage, literally meaning: Eighth Fire Shadow) when Naruto disappeared and was believed to have been killed.\n", style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          )
        ),
      )
    );
  }
}
