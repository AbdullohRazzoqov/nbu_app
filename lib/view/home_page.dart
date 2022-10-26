import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(builder: (context, snap) {
        debugPrint("${snap.data}");
        if (!snap.hasData) {
          return const CircularProgressIndicator();
        } else if (snap.hasError) {
          return const Center(
            child: Text("ERROR"),
          );
        } else {
          return ListView.builder(itemBuilder: (context, index) {
            return Text("${snap.data}");
          });
        }
      }),
    );
  }
}
