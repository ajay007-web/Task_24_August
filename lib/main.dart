import 'package:flutter/material.dart';
import 'package:imageapp/Screens/HomePage.dart';

import 'Screens/ShowItem.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}
