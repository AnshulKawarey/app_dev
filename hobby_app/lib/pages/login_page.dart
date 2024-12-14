import 'package:flutter/material.dart';
import 'package:hobby_app/components/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                //Logo

                Icon(
                  Icons.android_rounded,
                  size: 90,
                  color: Theme.of(context).colorScheme.primary,
                ),

                //email
                MyTextField(
                  controller: emailController,
                  hintText: "Enter Email",
                  obscureText: false,
                ),

                SizedBox(
                  height: 20,
                ),

                //password
                MyTextField(
                  controller: pwController,
                  hintText: "Enter Password",
                  obscureText: true,
                ),
                // login button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
