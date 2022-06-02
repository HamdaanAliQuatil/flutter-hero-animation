import 'package:flutter/material.dart';

class Util{
  static const String COFFFE_URL = 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/A_small_cup_of_coffee.JPG/1200px-A_small_cup_of_coffee.JPG';
  static const String CAPPUCCINO_URL = 'https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1200-630,f_auto,q_auto:best/newscms/2019_33/2203981/171026-better-coffee-boost-se-329p.jpg';
  static const String TEA_URL = 'https://www.verywellhealth.com/thmb/ZGs7ufUg-ohsUzQrZZ_Lfbfavns=/1989x1492/smart/filters:no_upscale()/GettyImages-693893647-588d21e413dd411cb1f2b0a0ea3e02da.jpg';

  static Widget buildHeroIcon(String path, String tag){
    return Hero(
      tag: tag, 
      child: Container(
        width: 80,
        height: 80,
        child: Image.network(
          path,
          fit: BoxFit.cover,
        ),
      )
    );
  }

  static Widget buildHeroDestination(String path, String tag, double width){
    return Hero(
      tag: tag,
      child: Container(
        width: width,
        child: Image.network(path,
        fit: BoxFit.cover,
        ),
      )
    );
  }
}