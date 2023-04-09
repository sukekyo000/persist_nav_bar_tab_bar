import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'ui/detail_page.dart';
import 'ui/home_page.dart';
import 'state/bottom_nav.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(bottomNavControllerProvider);

    final pages = [
      const HomePage(),
      const DetailPage(),
    ];

    return Scaffold(
      body: PersistentTabView(
        context,
        controller: controller,
        screens: pages,
        items: [
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.home),
            title: "Home",
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.featured_play_list),
            title: "Detail",
          ),
        ],
        backgroundColor: Colors.white,
        navBarStyle: NavBarStyle.style1,
      ),
    );
  }
}
