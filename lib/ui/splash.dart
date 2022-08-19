import 'dart:async';

import "package:flutter/material.dart";
import 'package:futsal_friendly_schedule/ui/register_user_info.dart';
import 'package:futsal_friendly_schedule/ui/user_dashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),() async {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      String reg = localStorage.getString("registered").toString();
      if(reg == "registered"){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> UserDashboard()));
      }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex)=> UserRegistration()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogo(
        size: 70,
      ),
    );
  }
}