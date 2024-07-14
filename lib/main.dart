import 'package:app_final_2/config/router/routers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApp()); 


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'router',
      routerConfig: appRouter,
    );
  }
}
