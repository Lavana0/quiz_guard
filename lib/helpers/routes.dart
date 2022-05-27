import 'package:flutter/material.dart';
import '../screens/splash_screen.dart';
import '../screens/dashboard.dart';
import '../screens/products.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (BuildContext context) => Splash(),
  '/dashboard': (BuildContext context) => Dashboard(),
  '/products' : (BuildContext context) => Products(),
};