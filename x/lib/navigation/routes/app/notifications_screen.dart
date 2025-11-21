import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';

@RoutePage()
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: Center(child: Text('Notifications Screen')),
    );
  }
}
