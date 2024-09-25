import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bij\'s Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 150, 50, 50)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BJ Louis E. \'Bij\' Marcellana'),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/images/testpfp.jpg'),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'BJ Louis E. Marcellana',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10.0),
              child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(color: const Color.fromARGB(255, 0, 0, 0)),
                children: [
                  TableRow(children: [
                    Icon(Icons.email),
                    Text('Email'),
                    Text('bjlouis.marcellana@wvsu.edu.ph'),
                  ]),
                  TableRow(children: [
                    Icon(Icons.info),
                    Text('Birth date'),
                    Text('March 14, 2004'),
                  ]),
                  TableRow(children: [
                    Icon(Icons.location_on),
                    Text('Home Address'),
                    Text('Blk. 12, Lot 31, Ph. 3, Cypress Ave., Gran Plains Subd., Jaro, Iloilo City'),
                  ]),
                  TableRow(children: [
                    Icon(Icons.auto_awesome),
                    Text('Hobbies'),
                    Text('Playing Games, Singing, Listening to Music, Spending Money'),
                  ]),
                  TableRow(children: [
                    Icon(Icons.gamepad),
                    Text('Favorite Game'),
                    Text('Monster Hunter'),
                  ]),
                  TableRow(children: [
                    Icon(Icons.music_note),
                    Text('Favorite Genre'),
                    Text('Hip-Hop/Rap'),
                  ]),
                ],
              ),
            ), //https://api.flutter.dev/flutter/material/Icons-class.html
            //^^reference icons^^

            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Bij',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hello! As you can see here above my biography - my name is BJ Louis E. Marcellana, but you can call me \"Bij\". I am a 20-year-old man who is a bachelor of information technology, majoring networking or network information services (NIS). I consider myself a person who always strives to know the unknown to which I could describe myself as adventurous depending on the circumstance. I love playing games; I usually play fps games like Valorant - but I prefer playing action rpg games, especially this game series called Monster Hunter which is more on the adventurous side as of becoming a hunter who hunts monsters for survival and especially exploration. I also love Hip-hop/Rap music, especially underrated ones like \"Cold Blood, Warm Nights\" by Faceless 1-7, which is more of a dark hip-hop rap type of music.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}