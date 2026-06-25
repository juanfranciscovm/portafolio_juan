import 'package:flutter/material.dart';

class FirmaIcon extends StatelessWidget {
  final String path;
  final double size;

  const FirmaIcon({super.key, required this.path, this.size = 55.0});

  @override
  Widget build(BuildContext context) {
    return Image.asset(path, width: size, height: size, fit: BoxFit.contain);
  }
}
