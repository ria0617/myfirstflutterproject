import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //디버그 빨간 띠 삭제
        title: 'Appbar',
        theme: ThemeData(
          primarySwatch: Colors.red
          //원하는 색상값을 넣고 싶을 땐 rgb 컬러값을 해시값으로 치환해서 사용
          //primaryColor: Color(0xFF174378),
        ),
      home: MyPage(),
    );
  }
}


class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF174378),
        title: Text('Appbar icon menu'), //앱바 타이틀 txt
        centerTitle: true, //txt 가운데 정렬 여부
        elevation: 0.0, //앱바 그림자 깊이
      ),
      body: Builder(builder: (BuildContext ctx) {
        return Center(
          child: FlatButton(
            child: Text(
              'Show me',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
            onPressed: () {
              Scaffold.of(ctx).showSnackBar(SnackBar(
                content: Text('Hello'),
              ));
            },
          ),
        );
      },)
    );
  }
}

