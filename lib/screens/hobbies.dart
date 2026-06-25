import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

class Hobbies extends StatelessWidget {
  const Hobbies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          "My hobbies",
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
        child: Accordion(
          flipRightIconIfOpen: false,
          headerBackgroundColorOpened: const Color.fromARGB(255, 200, 218, 255),
          headerBackgroundColor: Colors.white,
          maxOpenSections: 1,
          contentBackgroundColor: Colors.white,
          contentBorderColor: Colors.blueGrey.shade700,
          contentBorderWidth: 3,
          contentHorizontalPadding: 20,
          scaleWhenAnimating: true,
          openAndCloseAnimation: true,
          headerPadding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 30,
          ),

          children: [
            AccordionSection(
              //natacion
              isOpen: false,
              headerPadding: const EdgeInsets.only(
                left: 15,
                top: 0,
                bottom: 0,
                right: 0,
              ),

              header: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Natación",
                      style: TextStyle(
                        color: Color.fromARGB(221, 12, 17, 38),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "3+ años entrenando",
                      style: TextStyle(
                        color: Color.fromARGB(221, 12, 17, 38),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

              rightIcon: Container(
                width: 80,
                height: 75,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/icono_natacion.png",
                  fit: BoxFit.contain,
                ),
              ),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://drive.google.com/uc?export=view&id=1Z6MDWL24A1gBZBCy-3p4H--RvQLssQx1",
                      height: 230,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Me encanta nadar, llevo entrenando desde hace poco más de 3 años y he participado en algunas competencias.",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
            ),

            AccordionSection(
              //videojuegos
              isOpen: false,
              headerPadding: const EdgeInsets.only(
                left: 15,
                top: 0,
                bottom: 0,
                right: 0,
              ),

              header: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Videojuegos",
                      style: TextStyle(
                        color: Color.fromARGB(221, 12, 17, 38),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Por diversión",
                      style: TextStyle(
                        color: Color.fromARGB(221, 12, 17, 38),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

              rightIcon: Container(
                width: 80,
                height: 75,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/icono_videojuegos.png",
                  fit: BoxFit.contain,
                ),
              ),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://drive.google.com/uc?export=view&id=1C9t5kmr-5ubUKdtb13O8TSlSTPpI4x-2",
                      height: 230,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Juego videojuegos cuando tengo un tiempo libre para divertirme un rato, mejor aún cuando es con amigos.",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
            ),

            AccordionSection(
              //panadería y pastelería
              isOpen: false,
              headerPadding: const EdgeInsets.only(
                left: 15,
                top: 0,
                bottom: 0,
                right: 0,
              ),

              header: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Panadería y pastelería",
                      style: TextStyle(
                        color: Color.fromARGB(221, 12, 17, 38),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Amante de hacer dulces",
                      style: TextStyle(
                        color: Color.fromARGB(221, 12, 17, 38),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

              rightIcon: Container(
                width: 80,
                height: 75,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/icono_torta.png",
                  fit: BoxFit.contain,
                ),
              ),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://drive.google.com/uc?export=view&id=1dXlGl9QW5zrM39xfT02tt78cBcQq71I0",
                      height: 230,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Me gusta mucho hornear y hacer dulces; sean tortas, galletas, brownies, muffins y básicamente todo lo que sea dulce.",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
            ),

            AccordionSection(
              //idiomas
              isOpen: false,
              headerPadding: const EdgeInsets.only(
                left: 15,
                top: 0,
                bottom: 0,
                right: 0,
              ),

              header: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Aprender idiomas",
                      style: TextStyle(
                        color: Color.fromARGB(221, 12, 17, 38),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "Entusiasta de los idiomas",
                      style: TextStyle(
                        color: Color.fromARGB(221, 12, 17, 38),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

              rightIcon: Container(
                width: 80,
                height: 75,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/icono_idiomas.png",
                  fit: BoxFit.contain,
                ),
              ),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://drive.google.com/uc?export=view&id=1p2pubWM1AvE9-WYvvFYGYQhLKUf2q19I",
                      height: 230,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Me fascina aprender nuevos idiomas. En 2024 me certifiqué de C1 en inglés y deseo aprender francés, actualmente estoy aprendiéndolo poco a poco.",
                    style: TextStyle(fontSize: 15, color: Colors.black),
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
