import 'package:flutter/material.dart';

class ScreanA extends StatelessWidget {
  const ScreanA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF174378),
        title: Text('A 페이지'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
                child: Text('b 페이지'),
                onPressed: () {
                  Navigator.pushNamed(context, '/b');
                }),

            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: Text('c 페이지'),
                onPressed: () {
                  Navigator.pushNamed(context, '/c');
                }),
          ],
        ),
      ),
    );
  }
}



