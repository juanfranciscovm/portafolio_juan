import 'package:flutter/material.dart';
import 'package:portafolio_juan/widgets/card_template_og.dart';
import 'package:portafolio_juan/widgets/widgets.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
                  Text(
                    "My projects",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: "Newake",
                      fontSize: 36,
                    ),
                  ),
                  const SizedBox(height: 40),
                  CardTemplate(
                    url:
                        "https://drive.google.com/uc?export=view&id=1kgtmdDLqypOF-K5U-5laull_ElQXDUKq",
                    title: "Flavio’s Tank Adventures",
                    text: "Juego",
                  ),
                  CardTemplate(
                    url:
                        "https://drive.google.com/uc?export=view&id=1kgtmdDLqypOF-K5U-5laull_ElQXDUKq",
                    title: "Capitán Folder",
                    text: "herramienta",
                  ),
                  CardTemplate(
                    url:
                        "https://drive.google.com/uc?export=view&id=1kgtmdDLqypOF-K5U-5laull_ElQXDUKq",
                    title: "Sistema de gestión de gimnasio",
                    text: "sistema",
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
