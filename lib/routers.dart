
import 'package:flutter/material.dart';
import 'package:nbk_app/view/home_page.dart';

class RouterGenerator {
  static generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => MyHomePage());
    }
  }
}
