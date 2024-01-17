import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool isObscure;
  final Widget? suffixWidget;
  final AutovalidateMode autoValidateMode;
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.validator,
    this.isObscure = false,
    this.controller,
    this.suffixWidget,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: isObscure,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        labelText: labelText,
        suffixIcon: suffixWidget,
      ),
    );
  }
}
