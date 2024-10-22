
import 'package:flutter/material.dart';
import 'package:project4/add.dart';
import 'package:project4/edit.dart';
import 'package:project4/getall.dart';
import 'package:project4/getpost.dart';
import 'package:project4/homescreen.dart';
import 'package:project4/routesname.dart';
// import 'package:lib/routesname.dart';


class AppRoute {
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.getall:
        return MaterialPageRoute(builder: (_) {
          return const Getall();
        });
      case RoutesName.homescreen:
        return MaterialPageRoute(builder: (_) {
          return const Homescreen();
        });
      case RoutesName.addd:
        return MaterialPageRoute(builder: (_) {
          return const Add();
        });
      case RoutesName.get:
      final args = settings!.arguments as int;
        return MaterialPageRoute(builder: (_) {
          return Getpost(
            id: args,
          );
      });
      case RoutesName.updatee:
      final args = settings!.arguments as int;
        return MaterialPageRoute(builder: (_) {
          return Edit(
            id: args,
          );
      });
     
//
      default:
        throw Exception('Route not found!');
    }
  }
}
