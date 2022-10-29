import 'package:flutter/material.dart';
import 'package:nbk_app/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(    ),
      initialRoute: '/',
      onGenerateRoute: (settings) => RouterGenerator.generateRoute(settings),
    );
  }
}
