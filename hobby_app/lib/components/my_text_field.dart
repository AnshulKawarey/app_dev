import 'package:flutter/material.dart';
import 'package:hobby_app/components/constants.dart';

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
    return Container(
      width: w * 80,
      height: h * 6,
      decoration: BoxDecoration(
          // color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(h),
          boxShadow: [
            // Top Left
            // BoxShadow(
            //   color: Theme.of(context).colorScheme.shadow, //cyan
            //   offset: Offset(-h / 10, -h / 10),
            //   blurRadius: h / 1.5,
            //   spreadRadius: 0.1,
            // ),
            // BoxShadow(
            //   color: Theme.of(context).colorScheme.tertiary, //white
            //   offset: Offset(-h / 55, -h / 55),
            //   blurRadius: h / 3,
            //   spreadRadius: 0.5,
            // ),

            //Bottom Right
            BoxShadow(
              color: Theme.of(context).colorScheme.inversePrimary, //black
              offset: Offset(0.5 * h, 0.5 * h),
              blurRadius: h,
              spreadRadius: 1,
            ),
            // BoxShadow(
            //   color: Theme.of(context).colorScheme.primaryContainer,
            //   offset: Offset(h / 20, h / 20),
            //   blurRadius: h,
            //   spreadRadius: 0.1,
            // ),
          ]),
      child: TextField(
        style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
        minLines: 1,
        maxLines: 1,
        // expands: true,
        controller: controller,
        obscureText: obscureText,
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
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
