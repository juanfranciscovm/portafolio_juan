import "package:flutter/material.dart";
import "package:portafolio_juan/screens/app_screens.dart";

class AppRoutes {
  static const initialRoute = "/home";

  static Map<String, Widget Function(BuildContext)> routes = {
    "/home": (BuildContext context) => const NavigatorScreen(),
    "/about_me": (BuildContext context) => const AboutMe(),
    "/socials": (BuildContext context) => const Socials(),
    "/hobbies": (BuildContext context) => const Hobbies(),
    "/comments": (BuildContext context) => const Comments(),
    "/projects": (BuildContext context) => const Projects(),
  };
}
