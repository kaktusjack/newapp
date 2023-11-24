import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/pages/Details.dart';
import 'package:newapp/pages/Login.dart';
import 'package:newapp/pages/newsclass.dart';

class Routegen{
  static Route<dynamic>generateRoute(RouteSettings settings){
    // final Object arg= settings.arguments
    switch(settings.name){
      case'/':
        return MaterialPageRoute(builder: (_)=> login());
      case'/newsui':
        return MaterialPageRoute(builder: (_)=>NewsClass());
      case '/detail':
        return MaterialPageRoute(builder: (_)=> details());
      default:
        return _errorRoute();
    }
  }
  static Route<dynamic>_errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}