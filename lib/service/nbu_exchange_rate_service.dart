
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nbk_app/models/nbk_model.dart';

class ServiceNBU {
  static Future<List<NbuModel>> getNBU() async {
    Uri url = Uri.parse("https://nbu.uz/uz/exchange-rates/json");
    dynamic res = await http.get(url);
    return (jsonDecode(res.body) as List).map((e) => NbuModel.fromJson(e)).toList();
  }
}
