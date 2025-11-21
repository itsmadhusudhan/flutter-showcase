import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class PostScreen extends StatelessWidget {
  final String id;
  const PostScreen({super.key, @PathParam("id") required this.id});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Post Screen')));
  }
}
