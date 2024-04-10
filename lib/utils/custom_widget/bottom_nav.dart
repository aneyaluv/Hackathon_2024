import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabTapped;
  const BottomNav(
      {super.key, required this.onTabTapped, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.amberAccent,
      onTap: onTabTapped,
      items: const [
        BottomNavigationBarItem(
            label: 'Create',
            icon: Icon(
              Icons.create,
            )),
        BottomNavigationBarItem(
            label: 'Tell',
            icon: Icon(
              Icons.record_voice_over_rounded,
            )),
        BottomNavigationBarItem(
            label: 'Learn',
            icon: Icon(
              Icons.book_rounded,
            )),
      ],
      iconSize: 30,
    );
  }
}
