import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/app_colors.dart';

class CustomTextfiled extends StatefulWidget {
  const CustomTextfiled({
    super.key,
    required this.hite,
    required this.ispasword,
    required this.controller,
    required this.fieldType,
  });

  final String hite;
  final bool ispasword;
  final TextEditingController controller;
  final String fieldType;

  @override
  State<CustomTextfiled> createState() => _CustomTextfiledState();
}

class _CustomTextfiledState extends State<CustomTextfiled> {
  late bool _obscureText;

  @override
  void initState() {
    _obscureText = widget.ispasword;
    super.initState();
  }

  void _togglePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      cursorHeight: 20,
      cursorColor: AppColors.primary,

      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          switch (widget.fieldType) {
            case "name":
              return "Please enter your name";

            case "email":
              return "Please enter your email";

            case "password":
              return "Please enter your password";

            default:
              return "This field is required";
          }
        }

        if (widget.fieldType == "name") {
          if (value.trim().length < 3) {
            return "Name must be at least 3 characters";
          }
        }

        if (widget.fieldType == "email") {
          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
            return "Please enter a valid email";
          }
        }

        if (widget.fieldType == "password") {
          if (value.length < 8) {
            return "Password must be at least 8 characters";
          }
        }

        return null;
      },

      decoration: InputDecoration(
        hintText: widget.hite,
        fillColor: Colors.white,
        filled: true,

        suffixIcon: widget.ispasword
            ? IconButton(
                onPressed: _togglePassword,
                icon: Icon(
                  _obscureText ? CupertinoIcons.eye : CupertinoIcons.eye_slash,
                ),
              )
            : null,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.primary),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
