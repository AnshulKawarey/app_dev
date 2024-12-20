import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width / 100;
    double h = MediaQuery.sizeOf(context).height / 100;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: w * 80,
        height: h * 6,
        padding: EdgeInsets.all(w),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(w * 2),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow, //cyan
              offset: Offset(-h / 10, -h / 10),
              blurRadius: h / 1.5,
              spreadRadius: 0.01,
            ),
            BoxShadow(
              color: Theme.of(context).colorScheme.inversePrimary, //black
              offset: Offset(0.8 * h, 0.8 * h),
              blurRadius: h,
              spreadRadius: 0.5,
            ),
            BoxShadow(
              color: Theme.of(context).colorScheme.primaryContainer,
              offset: Offset(h / 20, h / 20),
              blurRadius: h,
              spreadRadius: 0.01,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              shadows: [
                Shadow(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  blurRadius: w * 30,
                )
              ],
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
