import 'package:flutter/material.dart';
import 'package:instagram/ui/insta_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Instagram Clone Task Extra',
      debugShowCheckedModeBanner: false,
      home: new InstaHome(),
    );
  }
}
