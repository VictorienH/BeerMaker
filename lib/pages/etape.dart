import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:beermaker/strings.dart';

class PageEtape extends StatelessWidget {
  const PageEtape({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Strings.titreMenu0)),
      body: const Text(""),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Next',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
