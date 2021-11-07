import 'package:flutter/material.dart';

class ScreanC extends StatelessWidget {
  const ScreanC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreanC'),
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
