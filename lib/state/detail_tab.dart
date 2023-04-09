import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_tab.g.dart';

@Riverpod(keepAlive: true)
class SelectTabBar extends _$SelectTabBar {
  @override
  int build() {
    return 0;
  }

  changeTabForDetail1() => state = 0;
  changeTabForDetail2() => state = 1;
  changeTabForDetail3() => state = 2;
}
