
import 'package:flutter/material.dart';

import 'list_change.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.green,
      ),
      home: const ChooseCard ()
      // CardList(),
    );
  }
}


