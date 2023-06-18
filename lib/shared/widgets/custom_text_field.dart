import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_factory/shared/utils/index.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.onChanged,
    this.hintText,
    this.obscureCharacter = '*',
    this.obscureText = false,
    this.validator,
    this.inputFormatters,
    this.prefix,
    this.suffix,
    this.keyboardType,
  }) : super(key: key);

  final TextEditingController controller;
  final Function(String) onChanged;
  final String? hintText, obscureCharacter;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffix,prefix;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontFamily: 'DM_Sans',fontWeight: FontWeight.w500),
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText!,
      obscuringCharacter: obscureCharacter!,
      inputFormatters: inputFormatters,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 16),
        hintText: hintText,
        prefixIcon: prefix,
        suffixIcon: suffix,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: greyColor),
          borderRadius: BorderRadius.circular(100),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: primaryBrandColor),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
