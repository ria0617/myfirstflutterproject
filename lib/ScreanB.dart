import 'package:flutter/material.dart';

class ScreanB extends StatelessWidget {
  const ScreanB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreanB'),
      ),
      body: Center(
        child: Text(
          'ScreanB',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
