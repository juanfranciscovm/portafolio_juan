import 'package:flutter/material.dart';
import "package:portafolio_juan/widgets/widgets.dart";

class FirmaDev extends StatelessWidget {
  const FirmaDev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 17, 57),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Firma del desarrollador",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Newake",
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 40.0,
              horizontal: 20.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Herramientas que\ndomino",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 7, 17, 57),
                    fontSize: 30,
                    fontFamily: "Newake",
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FirmaIcon(path: "assets/images/excel.png"),
                    FirmaIcon(path: "assets/images/adobe.png"),
                    FirmaIcon(path: "assets/images/figma.png"),
                    FirmaIcon(path: "assets/images/canva.png"),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FirmaIcon(path: "assets/images/csharp.png"),
                    FirmaIcon(path: "assets/images/dart.png"),
                    FirmaIcon(path: "assets/images/python.png"),
                    FirmaIcon(path: "assets/images/tinkercad.png"),
                  ],
                ),

                const SizedBox(height: 40),

                Image.asset(
                  "assets/images/firma.png",
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
