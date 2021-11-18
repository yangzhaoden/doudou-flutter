import 'package:doudou/config/app_thumb.dart';
import 'package:doudou/transit_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '抖抖',
      home: TransitPage(),
      debugShowCheckedModeBanner: false,
      theme: theme,
    );
  }
}
