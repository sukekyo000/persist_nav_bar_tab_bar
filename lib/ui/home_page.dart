import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/bottom_nav.dart';
import '../state/detail_tab.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavController = ref.read(bottomNavControllerProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Home"),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ref.read(selectTabBarProvider.notifier).changeTabForDetail1();
              bottomNavController.jumpToTab(1);
            },
            child: const Text("Detail1"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ref.read(selectTabBarProvider.notifier).changeTabForDetail2();
              bottomNavController.jumpToTab(1);
            },
            child: const Text("Detail2"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ref.read(selectTabBarProvider.notifier).changeTabForDetail3();
              bottomNavController.jumpToTab(1);
            },
            child: const Text("Detail3"),
          ),
        ]),
      ),
    );
  }
}
