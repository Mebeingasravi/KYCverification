import 'package:flutter/material.dart';

Widget bottomNavigationBar(BuildContext context) {
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_max),
        label: 'home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.history_rounded),
        label: 'history',
      ),
    ],
    onTap: (val) {
      switch (val) {
        case 0:
          Navigator.pushNamed(context, '/home');
        case 1:
          Navigator.pushNamed(context, '/history');
        default:
          Navigator.pushNamed(context, '/home');
      }
    },
  );
}
