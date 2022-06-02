// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_hero_animation/details.dart';
import 'package:flutter_hero_animation/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Animation',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HeroPage(),
    );
  }
}

class HeroPage extends StatelessWidget {
  const HeroPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animations',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        alignment: Alignment.topLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              child: Util.buildHeroIcon(Util.COFFFE_URL, 'coffee'),
              onTap: (){changeRoute(context, 'coffee');},
            ),
            GestureDetector(
              child: Util.buildHeroIcon(Util.CAPPUCCINO_URL, 'cappuccino'),
              onTap: (){changeRoute(context, 'cappuccino');},
            ),
            GestureDetector(
              child: Util.buildHeroIcon(Util.TEA_URL, 'tea'),
              onTap: (){changeRoute(context, 'tea');},
            ),
          ],
        ),
      ),
    );
  }

  void changeRoute(BuildContext context, String drink){
    switch (drink){
      case 'coffee': 
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=> Details(Util.COFFFE_URL, drink)
      ));
      break;
      case 'cappuccino': 
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=> Details(Util.CAPPUCCINO_URL, drink)
      ));
      break;
      case 'tea': 
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=> Details(Util.TEA_URL, drink)
      ));
      break;
    }
  }
}
