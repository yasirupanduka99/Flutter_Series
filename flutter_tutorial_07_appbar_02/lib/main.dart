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
      debugShowCheckedModeBanner: false, //this can remove or enable debug banner in develop mode.
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

    double bodytextWidth = MediaQuery.of(context).size.width * 0.90; //these line is getting screen width size and multiple percentage which i need

    return DefaultTabController(
      length: 3, //how many tabs i want to display. this is came with DefaultTabController widget

        child: Scaffold(
          appBar: AppBar(
            title: const Text("Naruto Cards", style: TextStyle(color: Colors.white),),
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
            flexibleSpace: Image.asset(
              "assests/rt.jpg",
              fit: BoxFit.cover,
            ),
            bottom: const TabBar(
                tabs: [
                  // Tab(icon: Icon(Icons.directions_car)),
                  // Tab(icon: Icon(Icons.directions_transit)),
                  // Tab(icon: Icon(Icons.directions_bike)),
                  Tab(text: 'Shikamaru Nara'),
                  Tab(text: 'Temari Nara'),
                  Tab(text: 'Naruto Uzumaki'),
                ],
            ),
            elevation: 0.0, // elevation is shadow size of tab bar in bottom.
            backgroundColor: Colors.red, //backgroundColor is the background color of tab bar and appbar in bottom. If appbar is covered by image using flexibleSpace then this backgroundColor doesn't appear.
          ),

          body: TabBarView(
              children: [
                tab1(), //These are methods that i built. I'm creating this methods in below
                tab2(), //These are methods that i built. I'm creating this methods in below
                tab3(), //These are methods that i built. I'm creating this methods in below
              ]
            ),

          )
    );
  }
}

Widget tab1(){
  return SingleChildScrollView(
    child: Container(
      // color: Colors.red,
      //   width: bodytextWidth,
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
  );
}

Widget tab2(){
  return SingleChildScrollView(
    child: Container(
      // color: Colors.red,
      //   width: bodytextWidth,
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
        child: Column(
          children: [
            Image.asset("assests/Temari.png"),
            const Text(
              "\n\nTemari Nara (奈良テマリ, Nara Temari) is a former kunoichi of Sunagakure's Kazekage Clan and the eldest of the Three Sand Siblings. After marrying Shikamaru Nara, she becomes a member of the Nara Clan and emigrates to Konohagakure, where she works as a kunoichi for the village.\n", style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        )
    ),
  );
}

Widget tab3(){
  return SingleChildScrollView(
    child: Container(
      // color: Colors.red,
      //   width: bodytextWidth,
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
        child: Column(
          children: [
            Image.asset("assests/Naruto.png"),
            const Text(
              "\n\nNaruto Uzumaki (うずまきナルト, Uzumaki Naruto) is a shinobi of Konohagakure's Uzumaki clan. He became the jinchūriki of the Nine-Tails on the day of his birth — a fate that caused him to be shunned by most of Konoha throughout his childhood. After joining Team Kakashi, Naruto worked hard to gain the village's acknowledgement all the while chasing his dream to become Hokage. In the following years, through many hardships and ordeals, he became a capable ninja, regarded as a hero both by the villagers, and soon after, the rest of the world, becoming known as the Hero of the Hidden Leaf (木ノ葉隠れの英雄, Konohagakure no Eiyū, literally meaning: Hero of the Hidden Tree Leaves). He soon proved to be one of the main factors in winning the Fourth Shinobi World War, leading him to achieve his dream and become the village's Seventh Hokage (七代目火影, Nanadaime Hokage, literally meaning: Seventh Fire Shadow).\n", style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        )
    ),
  );
}
