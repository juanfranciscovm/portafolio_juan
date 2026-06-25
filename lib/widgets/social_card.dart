import 'package:flutter/material.dart';
import "package:url_launcher/url_launcher.dart";

class SocialCard extends StatelessWidget {
  final String title;
  final String username;
  final Widget icon;
  final Color? backgroundColor;
  final Gradient? backgroundGradient;
  final String url;
  final double? height;

  const SocialCard({
    super.key,
    required this.title,
    required this.username,
    required this.icon,
    required this.url,
    this.backgroundColor,
    this.backgroundGradient,
    this.height,
  });

  Future<void> _launchURL() async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint("No se pudo abrir $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchURL,
      child: Container(
        height: height,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: backgroundColor,
          gradient: backgroundGradient,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Stack(
          children: [
            Align(alignment: Alignment.topLeft, child: icon),

            const Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.open_in_new,
                color: Color.fromARGB(179, 255, 255, 255),
                size: 20,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    username,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 11.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
