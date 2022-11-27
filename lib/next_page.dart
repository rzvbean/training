import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('動画見てみー',
      style: TextStyle(fontSize: 50),)),
    );
  }
}
