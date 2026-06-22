import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const NavBar({Key? key, required this.currentIndex, required this.onTap})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            );
          }
          return const TextStyle(color: Colors.white, fontSize: 12);
        }),
      ),
      child: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: onTap,
        backgroundColor: const Color.fromARGB(255, 52, 83, 121),
        indicatorColor: const Color.fromARGB(255, 116, 156, 227),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.account_circle_outlined, color: Colors.white),
            selectedIcon: Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
            ),
            label: 'About me',
          ),
          NavigationDestination(
            icon: Icon(Icons.language, color: Colors.white),
            selectedIcon: Icon(Icons.language, color: Colors.white),
            label: 'Socials',
          ),
          NavigationDestination(
            icon: Icon(Icons.emoji_emotions_outlined, color: Colors.white),
            selectedIcon: Icon(
              Icons.emoji_emotions_rounded,
              color: Colors.white,
            ),
            label: 'Hobbies',
          ),
          NavigationDestination(
            icon: Icon(Icons.folder_open_outlined, color: Colors.white),
            selectedIcon: Icon(Icons.folder, color: Colors.white),
            label: 'Projects',
          ),
          NavigationDestination(
            icon: Icon(Icons.comment_outlined, color: Colors.white),
            selectedIcon: Icon(Icons.comment_rounded, color: Colors.white),
            label: 'Comments',
          ),
        ],
      ),
    );
  }
}
