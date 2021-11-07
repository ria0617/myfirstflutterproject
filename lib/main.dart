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
        //backgroundColor: Colors.grey,
        backgroundColor: Color(0xFF174378),
        title: Text('Appbar icon menu'), //앱바 타이틀 txt
        centerTitle: true, //txt 가운데 정렬 여부
        elevation: 0.0, //앱바 그림자 깊이

        //앱바 타이틀 오른쪽에 아이콘 위치 설정
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping_cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ],
      ),

      //다운드롭 메뉴 위치는 자동으로 설정된다.
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/nino.jpg'),
              ),
              //하나 이상의 다른 계정을 추가할 때
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/nino.jpg'),
                )
              ],

              accountName: Text('nino'),
              accountEmail: Text('nino.nino.com'),
              onDetailsPressed:(){
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color:Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft:  Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color:Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
              ),
            ListTile(
              leading: Icon(Icons.search,
                color:Colors.grey[850],
              ),
              title: Text('search'),
              onTap: (){
                print('search is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color:Colors.grey[850],
              ),
              title: Text('q&a'),
              onTap: (){
                print('q&a is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
