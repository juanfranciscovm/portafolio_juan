import 'package:flutter/material.dart';
import "package:portafolio_juan/screens/firma_dev.dart";
import "package:portafolio_juan/widgets/widgets.dart";

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          "About me",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Newake",
            fontSize: 35,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu_open, color: Colors.white, size: 30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirmaDev()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
                  padding: const EdgeInsets.only(
                    top: 175,
                    left: 20,
                    right: 20,
                    bottom: 30,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E2232),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Juan Francisco Villarroel M",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Tango",
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "@juanfranciscovm",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Tango",
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 30),

                      // Filas de información
                      InformationTemplate(
                        icon: Icons.cake_outlined,
                        text: "23.04.2007",
                      ),
                      InformationTemplate(
                        icon: Icons.location_on_outlined,
                        text: "Isla de Margarita, Venezuela",
                      ),
                      InformationTemplate(
                        icon: Icons.computer_outlined,
                        text: "Ingeniero de Sistemas (en progreso)",
                      ),
                      InformationTemplate(
                        icon: Icons.school_outlined,
                        text:
                            "Bachiller egresado de la U.E. Colegio Nuestra Señora del Valle",
                      ),
                      InformationTemplate(
                        icon: Icons.language_outlined,
                        text: "Bilingüe (español y C1 en inglés)",
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 45, left: 80, right: 80),
                  padding: const EdgeInsets.only(
                    top: 150,
                    left: 20,
                    right: 20,
                    bottom: 25,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                ClipRRect(
                  //para redondear los bordes
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    "assets/images/profile_pic.png",
                    width: 210,
                    height: 210,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
