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
        title: Text('Scaffold Messenger'),
      ),
      body: HomeBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Like a new Snacbar'),
              duration: Duration(seconds: 5),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdPage()),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('go to the second page'),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Center(
        child: Text(
          '"좋아요가 추가 되었습니다"',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.redAccent
          ),
        ),
      ),
    );
  }
}


class ThirdPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ThirdPage'),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '"좋아요가 취소 하시겠습니까?"',
                    style: TextStyle(fontSize: 20.0, color: Colors.redAccent),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('좋아요가 취소 되었습니다.'),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    },
                    child: Text('취소하기'),
                  )
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}

