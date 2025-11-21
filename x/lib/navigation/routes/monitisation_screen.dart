import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class MonitisationScreen extends StatelessWidget {
  const MonitisationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Monitisation'), titleSpacing: 0),
      body: Center(child: Text('Monitisation Screen')),
    );
  }
}
