import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final IconData? icon;

  final String formProperty;
  final Map<String, String> formValue;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIcon,
    this.prefixIcon,
    this.icon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      keyboardType: keyboardType,
      obscureText: obscureText,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        // counterText: '3 caracteres',
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        icon: icon == null ? null : Icon(icon),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.green,
        //   ),
        //   borderRadius: BorderRadius.only(
        //     topRight: Radius.circular(15),
        //     bottomLeft: Radius.circular(15),
        //   ),
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(15),
        //     bottomRight: Radius.circular(15),
        //   ),
        // ),
      ),

      // initialValue: 'Jose Carlos',
      textCapitalization: TextCapitalization.words,
      // ignore: avoid_print
      onChanged: (value) => formValue[formProperty] = value,
      validator: (value) {
        if (value == null) return 'Es requerido';
        return (value.length < 3) ? "...minimo 3 letras " : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
