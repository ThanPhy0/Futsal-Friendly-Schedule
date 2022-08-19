import "package:flutter/material.dart";
import 'package:futsal_friendly_schedule/ui/splash.dart';

void main(){
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash()
    ); 
  }
}







// Padding(
//             padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
//             child: 
//           )