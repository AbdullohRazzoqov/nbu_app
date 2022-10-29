import 'package:flutter/material.dart';
import 'package:nbk_app/models/nbk_model.dart';
import 'package:nbk_app/service/nbu_exchange_rate_service.dart';

class ExchangeRate extends StatefulWidget {
  const ExchangeRate({super.key});

  @override
  State<ExchangeRate> createState() => _ExchangeRateState();
}

class _ExchangeRateState extends State<ExchangeRate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: ServiceNBU.getNBU(),
          builder: (context, AsyncSnapshot<List<NbuModel>> snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return const Center(child: Text("ERROR"));
            } else {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://flagcdn.com/w320/${(snapshot.data![index].code)!.substring(0, 2).toLowerCase()}.png")),
                      title: Text("${snapshot.data![index].code}"),
                      subtitle: Text("${snapshot.data![index].title}"),
                      trailing: Text(
                        "${snapshot.data![index].cbPrice} So'm",
                      ),
                    ),
                  );
                },
                itemCount: snapshot.data!.length,
              );
            }
          }),
    );
  }
}
