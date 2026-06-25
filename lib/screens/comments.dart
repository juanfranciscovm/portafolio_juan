import 'package:flutter/material.dart';
import "package:portafolio_juan/widgets/widgets.dart";

class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _commentController = TextEditingController();
  bool get _isFormComplete {
    return _nameController.text.trim().isNotEmpty &&
        _commentController.text.trim().isNotEmpty;
  }

  void _submitForm() {
    FocusScope.of(context).unfocus();

    setState(() {
      if (!(_formKey.currentState?.validate() ?? false)) {
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: const Color.fromARGB(255, 42, 48, 70),
          content: const Row(
            children: [
              Icon(
                Icons.check_circle_outline_outlined,
                color: Colors.greenAccent,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Datos enviados exitosamente.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      );
      _nameController.clear();
      _commentController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),

                const Text(
                  "Leave a\ncomment",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Newake",
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),

                const SizedBox(height: 40),

                InputTemplate(
                  labelTextValue: "Nombre",
                  hintTextValue: "Escribe tu nombre aquí",
                  textController: _nameController,
                  icon: Icons.person_outline,
                  onChanged: (_) => setState(() {}),
                ),

                InputTemplate(
                  hintTextValue: "Escribe tu comentario aquí!",
                  textController: _commentController,
                  maxLines: 10,
                  isFilled: true,
                  onChanged: (_) => setState(() {}),
                ),

                const SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerRight,
                  child: FilledButton(
                    onPressed: _isFormComplete ? _submitForm : null,
                    style: FilledButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(16),
                      backgroundColor: const Color(0xFF5A8BEE),
                      disabledBackgroundColor: Colors.grey,
                    ),
                    child: const Icon(Icons.send_rounded, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
