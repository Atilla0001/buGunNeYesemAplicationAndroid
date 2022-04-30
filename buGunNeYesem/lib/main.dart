import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'BUGUN NE YESEM',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaAdlari = [
    'mercimek',
    'tarhana',
    'tavuksuyu',
    'dugun corbasi',
    'yogurtlu corba'
  ];

  List<String> yemekAdlari = [
    'karni yarik',
    'manti',
    'kuru fasulye',
    'icli kofte',
    'balik'
  ];

  List<String> tatliAdlari = [
    'kadayif',
  'baklava',
    'sutlac',
   'kazandibi' ,
    'dondurma',
  ];

  void yemekMenu() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              //color: Colors.grey,
              //highlightColor: Colors.blue,
              splashColor: Colors.black,
              onPressed: yemekMenu,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: FlatButton(
              //color: Colors.grey,
              //highlightColor: Colors.blue,
              splashColor: Colors.black,
              onPressed: yemekMenu,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: FlatButton(
              //color: Colors.grey,
              //highlightColor: Colors.blue,
              splashColor: Colors.black,
              onPressed: yemekMenu,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
