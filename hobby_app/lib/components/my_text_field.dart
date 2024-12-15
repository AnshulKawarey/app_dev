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
              color: Theme.of(context).colorScheme.primaryContainer,
              offset: Offset(h / 2, h / 2),
              blurRadius: h / 3,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow,
              offset: Offset(-h / 2, -h / 2),
              blurRadius: h / 3,
              spreadRadius: 1,
            ),
          ]),
      child: TextField(
        minLines: null,
        maxLines: null,
        expands: true,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.circular(h),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.tertiary),
            borderRadius: BorderRadius.circular(h),
          ),
          fillColor: Theme.of(context).colorScheme.primary,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
