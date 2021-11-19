import 'package:doudou/config/app_colors.dart';
import 'package:flutter/material.dart';

class RootPageHead extends StatefulWidget {
  RootPageHead({Key? key}) : super(key: key);

  @override
  _RootPageHeadState createState() => _RootPageHeadState();
}

class _RootPageHeadState extends State<RootPageHead> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/common/logo.png",
          height: 40,
        ),
        Expanded(child: _searchContent()),
        Image.asset(
          "assets/images/icons/msg.png",
          height: 30,
        )
      ],
    );
  }

  Widget _searchContent() {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.active, borderRadius: BorderRadius.circular(30)),
    );
  }
}
