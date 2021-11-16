// main.dart
import 'package:brawl1/mocks/mock_review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'testando.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NossoApp',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainPage(MockReview.items);
  }
}
