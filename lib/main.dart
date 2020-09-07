import 'package:flutter/material.dart';
import 'package:loginpage/sample_view/sample_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SampleView(),
      theme:ThemeData.dark(),
      
      
    );
  }
}


