import 'package:doudou/components/root_page_head.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

const List<Tab> _tabs = [
  Tab(text: "歌曲"),
  Tab(text: "推荐"),
  Tab(text: "歌手"),
  Tab(text: "小视频"),
  Tab(text: "文章"),
  Tab(text: "视频"),
  Tab(text: "视频"),
];

final List<Widget> _tabsContent = [
  Text("888"),
  Text("dat3312399"),
  Text("da312ta"),
  Text("da213ta"),
  Text("da3125ta"),
  Text("d312ata"),
  Text("d312ata"),
];

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: _tabs.length,
        initialIndex: 1, //默认第一项
        vsync: this);

    _tabController?.addListener(() {
      print(_tabController?.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: RootPageHead(),
          bottom: TabBar(
            tabs: _tabs,
            isScrollable: true, //标签过多需允许滚动，否则标签显示不完整
            controller: _tabController,
          ),
        ),
        body: TabBarView(
          children: _tabsContent,
          controller: _tabController,
        ));
  }
}
