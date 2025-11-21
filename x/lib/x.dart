import 'package:flutter/material.dart';
import 'package:x/navigation/app_router.dart';

import 'package:x/styles/theme.dart';

class X extends StatelessWidget {
  final appRouter = AppRouter();

  X({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      title: 'X',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}
