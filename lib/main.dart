import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/default.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/splash.dart';
import 'package:flutter_app/register.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/":(context) => Splash(),
      '/login':(context) => Login(),
      '/register':(context) => Register(),
      '/default':(context) => DefaultPage(),
    },
  ));
}