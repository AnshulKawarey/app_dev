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
            //Top Left
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow, //cyan
              offset: Offset(-h / 5, -h / 5),
              blurRadius: h,
              spreadRadius: 1,
            ),
            // BoxShadow(
            //   color: Theme.of(context).colorScheme.tertiary, //white
            //   offset: Offset(-h / 20, -h / 20),
            //   blurRadius: h,
            //   spreadRadius: 0.5,
            // ),

            //Bottom Right
            BoxShadow(
              color: Theme.of(context).colorScheme.surfaceContainer, //black
              offset: Offset(h, h),
              blurRadius: h,
              spreadRadius: 0.5,
            ),
            BoxShadow(
              color: Theme.of(context).colorScheme.primaryContainer,
              offset: Offset(h / 3, h / 3),
              blurRadius: h,
              spreadRadius: 0.5,
            ),
          ]),
      child: TextField(
        minLines: null,
        maxLines: null,
        expands: true,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.surfaceContainer),
            borderRadius: BorderRadius.circular(h),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.tertiary),
            borderRadius: BorderRadius.circular(h),
          ),
          fillColor: Theme.of(context).colorScheme.surfaceContainer,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.surface),
        ),
      ),
    );
  }
}
