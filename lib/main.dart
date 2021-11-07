import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/ScreanA.dart';
import 'package:myfirstflutterproject/ScreanB.dart';
import 'ScreanC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Appbar',
        theme: ThemeData(
          primarySwatch: Colors.red
        ),
      initialRoute: '/',
      routes: {
        '/': (context) => ScreanA(),
        '/b': (context) => ScreanB(),
        '/c': (context) => ScreanC(),
      },
    );
  }
}


class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF174378),
        title: Text('첫번째 페이지'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('다음페이지'),
            onPressed: (){
              Navigator.push(context2,
                  MaterialPageRoute(
                  //필요 없는 매개변수는 _ 치환가능
                  builder: (_) => SecondPage()));
            }),
        ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF174378),
        title: Text('두번째 페이지'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('이전페이지'),
          onPressed: (){
            Navigator.pop(ctx);
          }),
      ),
    );
  }
}


