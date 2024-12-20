import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.shadow,
                Theme.of(context).colorScheme.surface,
                Theme.of(context).colorScheme.inversePrimary,
                Theme.of(context).colorScheme.primaryContainer,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.02, 0.2, 0.8, 0.9],
            ),
          ),
        ),
        Center(
          child: Container(
            height: h * 0.99,
            width: w * 0.95,
            // color: Color.fromARGB(255, 50, 50, 50),
            decoration: BoxDecoration(
              boxShadow: [
                // BoxShadow(
                //   color: Color.fromARGB(255, 48, 163, 192),
                //   blurRadius: 5,
                //   spreadRadius: 1,
                //   offset: Offset(-5, -5),
                // ),
                // BoxShadow(
                //   color: Color.fromARGB(255, 80, 29, 90),
                //   blurRadius: 5,
                //   spreadRadius: 1,
                //   offset: Offset(5, 5),
                //   // blurStyle: BlurStyle.inner,
                // ),
                BoxShadow(
                  color: Theme.of(context).colorScheme.surface,
                  blurRadius: w * 0.2,
                  spreadRadius: w * 0.1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
