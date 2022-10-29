
import 'package:flutter/material.dart';
import 'package:nbk_app/view/exchange_rate.dart';

class RouterGenerator {
  static generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) =>const  ExchangeRate());
    }
  }
}
