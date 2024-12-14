import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width / 100;
    double h = MediaQuery.sizeOf(context).height / 100;
    return Container(
      width: w * 80,
      height: h * 6,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(h),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.inversePrimary,
              offset: Offset(h / 4, h / 4),
              blurRadius: h / 2,
              spreadRadius: 2,
            ),
            BoxShadow(
              color: Theme.of(context).colorScheme.tertiary,
              offset: Offset(-h / 4, -h / 4),
              blurRadius: h / 2,
              spreadRadius: 2,
            ),
          ]),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: h * 2, horizontal: h),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.surface),
            borderRadius: BorderRadius.circular(h),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.inversePrimary),
            borderRadius: BorderRadius.circular(h),
          ),
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
