import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const TabBar(
            tabs: [
              Tab(
                icon: Text("Detail 1"),
              ),
              Tab(
                icon: Text("Detail 2"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Detail 1"),
            ),
            Center(
              child: Text("Detail 2"),
            ),
          ],
        ),
      ),
    );
  }
}
