import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/root_page_bottom_navbar.dart';
import './tabs/search_tab.dart';
import './tabs/profile_tab.dart';
import './tabs/messages_tab.dart';
import './tabs/favorites_tab.dart';

final currentRootPageIndex = StateProvider((ref) => 0);

class RootPage extends ConsumerWidget {
  static const String tag = '/root-page';
  final tabs = const <Widget>[
    SearchTab(),
    FavoriteTab(),
    MessagesTab(),
    ProfileTab(),
  ];

  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final idx = ref.watch(currentRootPageIndex);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: tabs[idx],
        bottomNavigationBar: const RootPageBottomNavbar(),
      ),
    );
  }
}
