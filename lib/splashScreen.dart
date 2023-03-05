// ignore_for_file: import_of_legacy_library_into_null_safe, file_names

import 'dart:async';
import 'main.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'strings.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key, required this.title});
  final String title;
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: const MyHomePage(
        title: Strings.titreMenu0,
      ),
      imageBackground: const AssetImage('assets/images/bgor.png'),
      title: const Text('Bienvenue sur BeerMaker'),
      image: Image.asset("assets/images/BMLogo/beermakerlogo350.png"),
      loadingText: const Text('Chargement'),
      photoSize: 100.0,
      loaderColor: Colors.green,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        Strings.titreMenu0,
        style: TextStyle(color: Colors.white),
      )),
      body: const Center(
          child: Text("Welcome to Home Page",
              style: TextStyle(color: Colors.black, fontSize: 30))),
    );
  }
}
