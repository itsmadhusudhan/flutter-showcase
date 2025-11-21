import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';

@RoutePage()
class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Messages')),
      body: Center(child: Text('Messages')),
    );
  }
}
