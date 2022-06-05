import 'package:anicyclepedia_deneme/hayvan_screens/amfibiler.dart';
import 'package:anicyclepedia_deneme/hayvan_screens/baliklar.dart';
import 'package:anicyclepedia_deneme/hayvan_screens/kuslar.dart';
import 'package:anicyclepedia_deneme/hayvan_screens/omurgasizlar.dart';
import 'package:anicyclepedia_deneme/hayvan_screens/surungenler.dart';
import 'package:anicyclepedia_deneme/hayvan_screens/memeliler.dart';
import 'home.dart';
import 'splash.dart';
import 'bilgi_ekrani.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => new HomePage(), 
        '/memeli': (BuildContext context) => new MemeliHayvanlarPage(), 
        '/amfibi': (BuildContext context) => new AmfibilerPage(), 
        '/balik': (BuildContext context) => new BaliklarPage(), 
        '/kus': (BuildContext context) => new KuslarPage(), 
        '/surungen': (BuildContext context) => new SurungenlerPage(), 
        '/omurgasiz': (BuildContext context) => new OmurgasizlarPage(), 


      },
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: SplashScreen(),
    );
  
  }
}

