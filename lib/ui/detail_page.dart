import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:persist_nav_bar_tab_bar/state/detail_tab.dart';

import '../state/bottom_nav.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final tabController = TabController(length: 3, vsync: this);

    return Consumer(builder: (context, ref, child) {
      final tabIndex = ref.watch(selectTabBarProvider);
      tabController.index = tabIndex;

      return Scaffold(
        appBar: AppBar(
          title: TabBar(
            controller: tabController,
            tabs: const [
              Tab(
                icon: Text("Detail 1"),
              ),
              Tab(
                icon: Text("Detail 2"),
              ),
              Tab(
                icon: Text("Detail 3"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            Center(
              child: Text("Detail 1"),
            ),
            Center(
              child: Text("Detail 2"),
            ),
            Center(
              child: Text("Detail 3"),
            ),
          ],
        ),
      );
    });
  }
}
