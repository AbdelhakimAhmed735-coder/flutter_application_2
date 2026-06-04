import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/app_colors.dart';

class CustomTextfiled extends StatefulWidget {
  const CustomTextfiled({
    super.key,
    required this.hite,
    required this.ispasword,
    required this.controller,
  });
  final String hite;
  final bool ispasword;
  final TextEditingController controller;

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
      validator: (value) {
        if (value == null || value.isEmpty) {
          return widget.ispasword
              ? "Please enter your password"
              : "Please enter your email";
        }

        if (!widget.ispasword) {
          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
            return "Please enter a valid email";
          }
        }

        if (widget.ispasword) {
          if (value.length < 8) {
            return "Password must be at least 8 characters";
          }
        }

        return null;
      },
      obscureText: _obscureText,
      cursorHeight: 20,
      cursorColor: AppColors.primary,
      decoration: InputDecoration(
        suffixIcon: widget.ispasword
            ? GestureDetector(
                onTap: _togglePassword,
                child: Icon(CupertinoIcons.eye),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: widget.hite,
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
