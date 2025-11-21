import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  final String id;
  const ProfileScreen({super.key, @PathParam("id") required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Profile Screen')));
  }
}
