import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.prefixIcon,
    required this.keyboardType,
    required this.isPassword,
    this.controller,
    this.validator,
    this.onChanged,
  });
  final String label;
  final IconData prefixIcon;
  final TextInputType keyboardType;
  final bool isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField();
  }
}
