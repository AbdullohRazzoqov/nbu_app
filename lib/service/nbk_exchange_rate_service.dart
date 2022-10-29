import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nbk_app/models/nbk_model.dart';

class ServiceNBK {
  static Future<List<NbkModel>> getNBK() async {
    Uri url = Uri.parse("https://nbu.uz/uz/exchange-rates/json");
    dynamic res = await http.get(url);
    return (jsonDecode(res.body) as List).map((e) => NbkModel.fromJson(e)).toList();
  }
}
