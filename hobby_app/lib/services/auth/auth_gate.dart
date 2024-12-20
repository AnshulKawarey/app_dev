import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hobby_app/pages/home_page.dart';
import 'package:hobby_app/services/auth/login_or_signup.dart';

//file to check if user is logged in or not
/*
if signed in then go to home page
else go to login
*/

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        //user logged in
        if (snapshot.hasData) {
          return const HomePage();
        }

        //not logged in
        else {
          return const LoginOrSignup();
        }
      },
    ));
  }
}
