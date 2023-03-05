import 'package:flutter/material.dart';
import 'splashScreen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'strings.dart';
import 'pages/etape.dart';
import 'pages/outils.dart';
import 'pages/recette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application ${Strings.titreMenu0}',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MySplashScreen(title: Strings.titreMenu0),
      routes: <String, WidgetBuilder>{
        '/route1': (BuildContext context) => const PageEtape(title: 'Page 1'),
        '/route2': (BuildContext context) => const PageOutils(title: 'Page 2'),
        '/route3': (BuildContext context) => const PageRecette(title: 'Page 3'),
      },
      debugShowCheckedModeBanner: false,
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
        title: const Center(
          child: Text(
            Strings.titreMenu0,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        leading: Image.asset(
          'assets/images/BMLogo/beermakerlogo350.png',
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            width: 300,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/images/BMLogo/beermakerlogo350.png',
                  height: 110,
                  width: 110,
                  fit: BoxFit.contain,
                ),
                const Text(
                  'BeerMaker',
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(0, 82, 90, 97),
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              width: 300,
              height: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PageEtape(
                              title: '',
                            )),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
                child: const Text(
                  Strings.titreMenu1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(0, 82, 90, 97),
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              width: 300,
              height: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PageOutils(
                              title: '',
                            )),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                child: const Text(
                  Strings.titreMenu2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(0, 82, 90, 97),
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              width: 300,
              height: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PageRecette(
                              title: '',
                            )),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                child: const Text(
                  Strings.titreMenu3,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
