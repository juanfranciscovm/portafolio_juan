import 'package:flutter/material.dart';

class Socials extends StatelessWidget {
  const Socials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          "My socials",
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
      body: SingleChildScrollView(),
    );
  }
}
