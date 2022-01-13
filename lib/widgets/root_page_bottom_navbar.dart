import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:yachtmob/pages/root_page.dart';

class RootPageBottomNavbar extends ConsumerWidget {
  const RootPageBottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final idx = ref.watch(currentRootPageIndex);

    return BottomNavigationBar(
      currentIndex: idx,
      onTap: (nIdx) {
        ref.read(currentRootPageIndex.state).update((state) => nIdx);
      },
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.grey,
      selectedIconTheme: const IconThemeData(color: Colors.blue),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
