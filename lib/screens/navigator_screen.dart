import 'package:flutter/material.dart';
import 'package:portafolio_juan/screens/app_screens.dart';
import 'package:portafolio_juan/widgets/widgets.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({Key? key}) : super(key: key);

  @override
  State<NavigatorScreen> createState() => _NavigatorState();
}

class _NavigatorState extends State<NavigatorScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const AboutMe(),
    const Socials(),
    const Hobbies(),
    const Projects(),
    const Comments(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color.fromARGB(255, 7, 17, 57),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 52, 114, 173),
              Color.fromARGB(255, 7, 17, 57),
            ],
          ),
        ),

        child: IndexedStack(index: _currentIndex, children: _screens),
      ),

      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
