import 'package:flutter/material.dart';

class InputTemplate extends StatefulWidget {
  final String hintTextValue;
  final String? labelTextValue;
  final TextEditingController textController;
  final IconData? icon;
  final int maxLines;
  final bool isFilled;
  final void Function(String)? onChanged;

  const InputTemplate({
    Key? key,
    required this.hintTextValue,
    this.labelTextValue,
    required this.textController,
    this.icon,
    this.maxLines = 1,
    this.isFilled = false,
    this.onChanged,
  }) : super(key: key);

  @override
  State<InputTemplate> createState() => _InputTemplateState();
}

class _InputTemplateState extends State<InputTemplate> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: widget.textController,
        maxLines: widget.maxLines,
        onChanged: widget.onChanged,
        autovalidateMode: AutovalidateMode.disabled,
        style: TextStyle(color: widget.isFilled ? Colors.black : Colors.white),

        validator: (str) {
          if (str == null || str.trim().isEmpty) {
            return 'Entrada requerida';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: widget.hintTextValue,
          labelText: widget.labelTextValue,
          hintStyle: TextStyle(
            color: widget.isFilled
                ? const Color.fromARGB(255, 32, 37, 54)
                : Colors.white54,
            fontSize: 14,
          ),
          labelStyle: TextStyle(
            color: widget.isFilled ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: widget.icon != null
              ? Icon(
                  widget.icon,
                  color: widget.isFilled ? Colors.black : Colors.white,
                )
              : null,
          filled: widget.isFilled,
          fillColor: widget.isFilled ? Colors.white : Colors.transparent,

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: widget.isFilled
                ? BorderSide.none
                : const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: widget.isFilled
                ? BorderSide.none
                : const BorderSide(color: Colors.blueAccent),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.redAccent),
          ),
        ),
      ),
    );
  }
}
