import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const NavBar({Key? key, required this.currentIndex, required this.onTap})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: currentIndex,
      height: 75,
      backgroundColor: Colors.transparent,
      color: const Color.fromARGB(255, 52, 83, 121),
      buttonBackgroundColor: Colors.blueAccent,
      animationDuration: const Duration(milliseconds: 350),
      animationCurve: Curves.easeInOut,

      items: [
        Icon(
          currentIndex == 0
              ? Icons.account_circle_rounded
              : Icons.account_circle_outlined,
          color: Colors.white,
          size: 25,
        ),
        Icon(
          currentIndex == 1 ? Icons.language : Icons.language,
          color: Colors.white,
          size: 25,
        ),
        Icon(
          currentIndex == 2
              ? Icons.emoji_emotions_rounded
              : Icons.emoji_emotions_outlined,
          color: Colors.white,
          size: 25,
        ),
        Icon(
          currentIndex == 3 ? Icons.folder : Icons.folder_open_outlined,
          color: Colors.white,
          size: 25,
        ),
        Icon(
          currentIndex == 4 ? Icons.comment : Icons.comment_outlined,
          color: Colors.white,
          size: 25,
        ),
      ],
      onTap: onTap,
    );
  }
}
