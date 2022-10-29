import 'package:flutter/material.dart';
import 'package:nbk_app/models/nbk_model.dart';
import 'package:nbk_app/service/nbk_exchange_rate_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: ServiceNBK.getNBK(),
          builder: (context, AsyncSnapshot<List<NbkModel>> snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return const Center(child: Text("ERROR"));
            } else {
              return Column(
                children: const [
                  SizedBox(
                    height: 70,
                  ),
                  ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    trailing: Text("asdf"),
                  ),
                  Expanded(flex: 5, child: Text(""))
                ],
              );
            }
          }),
    );
  }
}
