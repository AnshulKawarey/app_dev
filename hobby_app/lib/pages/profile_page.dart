import 'package:flutter/material.dart';
import 'package:hobby_app/components/background.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text('P R O F I L E'),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Stack(
        children: [
          Background(),
          SafeArea(
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
