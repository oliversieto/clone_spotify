import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Good Afternoon'),
      elevation: 0,
      backgroundColor: Colors.black.withOpacity(1),
      actions: const [
        Icon(Icons.notifications_none),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.history),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.settings),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight);
  }
}
