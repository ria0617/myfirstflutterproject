import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
        centerTitle: true, //타이틀 가운데 정렬
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //가운데 정렬
          children: [
            TextButton(
              onPressed: () {
                print('text button');
              },
              onLongPress: (){ //버튼을 오래 눌렀을때 동작
                print('버튼을 오래 눌렀어요');
              },
              child: Text('Text button'),
            ),
            TextButton.icon(
              onPressed: () {
                print('icon Button');
              },
              icon: Icon(
                Icons.home,
                size:30.0, //아이콘 사이즈
                color:Colors.black12, //여기서 색상을 선택하지 않으면 primary 색상이 된다
              ),
              label: Text('go to home'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.red,
              ),
            ),

            ElevatedButton(
              onPressed: (){
                print('Elevated Button');
              },
              child: Text('Elevated Button'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('icon Button');
              },
              icon: Icon(
                Icons.home,
                size:30.0, //아이콘 사이즈
                color:Colors.black12, //여기서 색상을 선택하지 않으면 primary 색상이 된다
              ),
              label: Text('go to home'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
              ),
            ),

            OutlinedButton(
              onPressed: (){
                print('Outlined Button');
              },
              child: Text('Outlined Button'),
            ),
            OutlinedButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.home,
                size:30.0, //아이콘 사이즈
                color:Colors.black12, //여기서 색상을 선택하지 않으면 primary 색상이 된다
              ),
              label: Text('go to home'),
              style: TextButton.styleFrom(
                primary: Colors.red, //배경색
                onSurface: Colors.blue,
                shadowColor: Colors.grey, //그림자 색상
                elevation: 1, //버튼 입체감
                padding: EdgeInsets.all(25.0), //여백
                side: BorderSide(color:Colors.black12, width: 2.0), //선 색상과 굵기
                alignment: Alignment.bottomCenter, //글자위치 변경
              ),
            ),

            SizedBox( //박스간격
              height: 10.0,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center, //그룹정렬
              buttonPadding: EdgeInsets.all(20),
              children: [
                OutlinedButton(
                  onPressed: (){
                    print('정렬1');
                  },
                    child: Text('정렬1'),
                ),
                ElevatedButton(
                  onPressed: (){
                    print('정렬2');
                  },
                    child: Text('정렬2'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

