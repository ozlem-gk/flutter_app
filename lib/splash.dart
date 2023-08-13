import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    startTimer();

    super.initState();
  }
  startTimer(){
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }
  route(){
    Navigator.of(context).pushReplacementNamed('/login');
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.tealAccent,
      child: Container(child: Image.asset("assets/logo_bird.png"),),
    );
    
  }
}