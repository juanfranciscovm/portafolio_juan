import 'package:flutter/material.dart';
import 'package:portafolio_juan/widgets/card_template.dart';
import 'package:portafolio_juan/widgets/widgets.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          "My projects",
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
          child: Stack(
            children: [
              Align(alignment: Alignment.center),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  CardTemplate(
                    url:
                        "https://drive.google.com/uc?export=view&id=12XLuAFVZpa9dDEiUSEYtPqh-FBkC2Uns",
                    title: "Flavio’s Tank Adventures",
                    text:
                        "\n▸ Juego de exploración y\nbatalla de tanques por niveles.\n▸ Hecho en C# con Windows Forms.\n▸ Presentado en la feria de ingeniería de abril 2026 de la UNIMAR.",
                  ),
                  CardTemplate(
                    url:
                        "https://drive.google.com/uc?export=view&id=1kQXs2qas7xyZ-gF79Od_Lr63J2D-5mLK",
                    title: "Capitán Folder",
                    text:
                        "\n\n▸ Herramienta de organización, filtrado y búsqueda en archivos .txt y .xlsx.\n▸ Hecho en Python.\n▸ Presentado en la feria de ingeniería de diciembre 2025 de la UNIMAR.",
                  ),
                  CardTemplate(
                    url:
                        "https://drive.google.com/uc?export=view&id=1ajX6_r4_gGw4CHUgH6cmjLb0OcR6Is0I",
                    title: "Sistema de gestión de gimnasio",
                    text:
                        "\n\n▸ Sistema de gestión de membresías y entrenadores para un gimnasio.\n▸ Hecho en C# con Windows Forms.",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
