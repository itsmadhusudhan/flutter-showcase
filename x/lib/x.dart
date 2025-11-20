import 'package:flutter/material.dart';

class X extends StatelessWidget {
  const X({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: Scaffold(body: Center(child: Text('Welcome to X Platform'))),
    );
  }
}
