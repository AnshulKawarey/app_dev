import 'package:flutter/material.dart';
import 'package:hobby_app/components/background.dart';
import 'package:hobby_app/components/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('H O M E'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Background(),
    );
  }
}
