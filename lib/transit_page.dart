import 'dart:async';

import 'package:doudou/root_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

class TransitPage extends StatefulWidget {
  TransitPage({Key? key}) : super(key: key);

  @override
  _TransitPageState createState() => _TransitPageState();
}

class _TransitPageState extends State<TransitPage> {
  int _currentTime = 60;
  Timer? _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _timer = Timer.periodic(Duration(milliseconds: 1000), (timer) {
      setState(() {
        _currentTime--;
      });
      if (_currentTime <= 0) {
        // print("object");
        timer.cancel;
        _jumpRootPage();
      }
    });
  }

  void _jumpRootPage() {
    _timer?.cancel();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => RootPage()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/common/wallhaven-28ovmy.jpg',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Positioned(
          child: InkWell(
            child: _clipButton(),
            onTap: _jumpRootPage,
          ),
          right: 10,
          top: MediaQuery.of(context).padding.top + 10,
        )
      ],
    ));
  }

  Widget _clipButton() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 50,
        height: 50,
        color: Colors.black.withOpacity(0.5),
        child: Column(
          //colunm是垂直布局
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "跳过",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            Text(
              "${_currentTime}s",
              style: TextStyle(color: Colors.white, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
