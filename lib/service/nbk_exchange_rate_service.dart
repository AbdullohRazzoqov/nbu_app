import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:nbk_app/models/nbk_model.dart';

class ServicePokedex extends Object {
  static Future getNBK() async {
    Response  res = await Dio().get("https://nbu.uz/uz/exchange-rates/json/");
    return NbkModel.fromJson(jsonDecode(res.data()));
  }
}
