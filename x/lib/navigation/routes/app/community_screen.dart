import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';

@RoutePage()
class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Community')),
      body: Center(child: Text('Community')),
    );
  }
}
