import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class TimelineFeedScreen extends StatelessWidget {
  final String id;
  const TimelineFeedScreen({super.key, @PathParam('id') required this.id});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return ListTile(title: Text('$id Item $index'));
      },
      itemCount: 100,
    );
  }
}
