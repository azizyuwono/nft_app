import 'package:flutter/material.dart';
import 'package:simple_nft/pages/discover.dart';
import 'package:simple_nft/pages/get_started.dart';
import 'package:simple_nft/pages/signin.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
    );
  }
}
