import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_nav.g.dart';

@riverpod
class BottomNavController extends _$BottomNavController {
  @override
  PersistentTabController build() {
    return PersistentTabController(initialIndex: 0);
  }
}
