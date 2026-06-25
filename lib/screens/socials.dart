import 'package:flutter/material.dart';
import "package:portafolio_juan/widgets/widgets.dart";

class Socials extends StatelessWidget {
  const Socials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double baseHeight = 110;
    const double spacing = 15;

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          "My social media",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Newake",
            fontSize: 35,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: SocialCard(
                    height: baseHeight,
                    title: "Email",
                    username: "jvillarroel.1184@unimar.edu.ve",
                    icon: Image.asset(
                      "assets/images/email.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                    backgroundGradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 23, 42, 98),
                        Color.fromARGB(255, 90, 116, 193),
                      ],
                    ),
                    url: "mailto:jvillarroel.1184@unimar.edu.ve",
                  ),
                ),
                const SizedBox(width: spacing),
                Expanded(
                  flex: 2,
                  child: SocialCard(
                    height: baseHeight,
                    title: "Teléfono",
                    username: "+58 412-1953174",
                    icon: Image.asset(
                      "assets/images/telefono.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                    backgroundGradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 96, 47, 119),
                        Color.fromARGB(255, 160, 90, 193),
                      ],
                    ),
                    url: "tel:+584121953174",
                  ),
                ),
              ],
            ),
            const SizedBox(height: spacing),

            SocialCard(
              height: baseHeight,
              title: "GitHub",
              username: "@juanfranciscovm",
              icon: Image.asset(
                "assets/images/github.png",
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
              backgroundGradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 55, 55, 55),
                  Color.fromARGB(255, 206, 206, 206),
                ],
              ),
              url: "https://github.com/juanfranciscovm",
            ),
            const SizedBox(height: spacing),

            Row(
              children: [
                Expanded(
                  child: SocialCard(
                    height: (baseHeight * 2) + spacing,
                    title: "X",
                    username: "@juanfranciscovm",
                    icon: Image.asset(
                      "assets/images/twitter.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                    backgroundGradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 18, 18, 18),
                        Color.fromARGB(255, 96, 96, 96),
                      ],
                    ),
                    url: "https://x.com/juanpakiko",
                  ),
                ),
                const SizedBox(width: spacing),
                Expanded(
                  child: Column(
                    children: [
                      SocialCard(
                        height: baseHeight,
                        title: "Telegram",
                        username: "juanfranciscovm",
                        icon: Image.asset(
                          "assets/images/telegram.png",
                          width: 35,
                          height: 35,
                          fit: BoxFit.contain,
                        ),
                        backgroundGradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 29, 161, 242),
                            Color.fromARGB(255, 0, 106, 159),
                          ],
                        ),
                        url: "https://t.me/juanfranciscovm",
                      ),
                      const SizedBox(height: spacing),
                      SocialCard(
                        height: baseHeight,
                        title: "LinkedIn",
                        username: "@juanfranciscovm",
                        icon: Image.asset(
                          "assets/images/linkedin.png",
                          width: 40,
                          height: 40,
                          fit: BoxFit.contain,
                        ),
                        backgroundGradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 26, 75, 100),
                            Color.fromARGB(255, 156, 217, 255),
                          ],
                        ),
                        url:
                            "https://linkedin.com/in/juan-francisco-villarroel-monasterios-19357b419",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: spacing),
            SocialCard(
              height: baseHeight,
              title: "Instagram",
              username: "@juanfranciscovm",
              icon: Image.asset(
                "assets/images/instagram.png",
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
              backgroundGradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 131, 58, 180),
                  Color.fromARGB(255, 253, 29, 29),
                  Color.fromARGB(255, 245, 96, 64),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              url: "https://instagram.com/juanfranciscov.m",
            ),
          ],
        ),
      ),
    );
  }
}
