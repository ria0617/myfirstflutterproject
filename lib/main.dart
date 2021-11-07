import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
        title: Text('위젯없이 스낵바 만들기'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        //child: MySnacBar(),
        child: TextButton(
          onPressed: () {
            flutterToast();
          },
          child: Text(
            'Toast',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

void flutterToast(){
  Fluttertoast.showToast(msg: '플러터',
  gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    fontSize: 20.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT
  );
}

//스낵바 함수
class MySnacBar extends StatelessWidget {
  const MySnacBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('show me'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Hello', //스낵바 표시 텍스트
                textAlign: TextAlign.center, //스낵바 글자 정렬
                style: TextStyle(color: Colors.white), //스낵바 글자 색상
              ),
              backgroundColor: Colors.teal, //스낵바 배경색상
              duration: Duration(milliseconds: 1000), //스낵바 유지시간
            ),
          );
        },
      ),
    );
  }
}
