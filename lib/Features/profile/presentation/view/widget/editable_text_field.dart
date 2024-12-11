import 'package:flutter/material.dart';

class EditableTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String currentName;
  const EditableTextField({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
    required this.keyboardType, required this.currentName,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: Colors.black,
      onTap: () {
        controller.selection = TextSelection(
          baseOffset: 0,
          extentOffset: controller.value.text.length,
        );
      },
      decoration: InputDecoration(
        // labelText: label,
        hintText: currentName,
        // floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: OutlineInputBorder(),
        prefixIcon: Icon(icon, color: Colors.black.withOpacity(0.5)),
        suffixIcon: IconButton(
          icon: Icon(Icons.edit, color: Colors.black.withOpacity(0.5)),
          onPressed: () {
            controller.selection = TextSelection(
              baseOffset: 0,
              extentOffset: controller.value.text.length,
            );
          },
        ),
      ),
    );
  }
}