import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Neuomorphic Test'),
      ),
      backgroundColor: Color.fromARGB(255, 50, 50, 50),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 172, 196, 202),
                Color.fromARGB(255, 75, 75, 75),
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 80, 29, 90),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.02, 0.2, 0.8, 0.99],
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
                  color: Color.fromARGB(200, 83, 84, 89),
                  blurRadius: w * 0.2,
                  spreadRadius: w * 0.1,
                ),
                // BoxShadow(
                //   color: Color.fromARGB(82, 50, 50, 50),
                //   blurRadius: 0,
                //   spreadRadius: 70,
                // ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
