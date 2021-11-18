import 'package:doudou/view/root_pages/home_page.dart';
import 'package:doudou/view/root_pages/music_page.dart';
import 'package:doudou/view/root_pages/profile.dart';
import 'package:doudou/view/root_pages/tiny_video.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

const Map<String, String> _bottomNames = {
  'home': '首页',
  'music': '音乐',
  'create_media': '',
  'tiny_video': '小视频',
  'profile': '我的',
};

final List<Widget> _pages = [
  HomePage(),
  MusicPage(),
  Container(),
  ProfilePage(),
  VideoPage()
];

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  final List<BottomNavigationBarItem> bottomNavBarList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bottomNames.forEach((key, value) {
      bottomNavBarList.add(bottemNavBatItem(key, value));
    });
  }

  void _onTabClick(int index) {
    if (index == 2) {
      return onCreateMedia();
    }
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: bottomNavBarList,
          currentIndex: _currentIndex,
          onTap: _onTabClick,
          type: BottomNavigationBarType.fixed,
        ),
        floatingActionButton: _createMediaButton(),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }

  Widget _createMediaButton() {
    return Container(
      margin: EdgeInsets.only(top: 56),
      width: 44,
      height: 44,
      child: FloatingActionButton(
        child: Image.asset("assets/images/icons/create_media.png"),
        onPressed: onCreateMedia,
      ),
    );
  }

  void onCreateMedia() {
    print("创建新视频");
    setState(() {
      _currentIndex = 2;
    });
  }

  BottomNavigationBarItem bottemNavBatItem(String key, String value) {
    return BottomNavigationBarItem(
      icon:
          Image.asset('assets/images/icons/${key}.png', width: 24, height: 24),
      activeIcon: Image.asset('assets/images/icons/${key}_active.png',
          width: 24, height: 24),
      tooltip: '',
      label: value,
    );
  }
}
