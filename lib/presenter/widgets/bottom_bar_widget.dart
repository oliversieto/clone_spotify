import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      elevation: 10,
      items: const [
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.my_library_music),
          label: 'Your Library',
        ),
      ],
      backgroundColor: Colors.black.withOpacity(.9),
    );
  }
}
