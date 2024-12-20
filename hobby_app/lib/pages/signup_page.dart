import 'package:flutter/material.dart';
import 'package:hobby_app/components/background.dart';
import 'package:hobby_app/components/constants.dart';
import 'package:hobby_app/components/my_button.dart';
import 'package:hobby_app/components/my_loading_circle.dart';
import 'package:hobby_app/components/my_text_field.dart';
import 'package:hobby_app/services/auth/auth_service.dart';

class SignupPage extends StatefulWidget {
  final Function()? onTap;
  const SignupPage({
    super.key,
    required this.onTap,
  });

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _auth = AuthService();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwController = TextEditingController();
  final TextEditingController confirmPwController = TextEditingController();

  void register() async {
    //create user if pw match
    if (pwController.text == confirmPwController.text) {
      showLoadingCircle(context);
      try {
        await _auth.registerEmailPassword(
          emailController.text,
          pwController.text,
        );
        if (mounted) hideLoadingCircle(context);
      }

      //catch errors
      catch (e) {
        if (mounted) hideLoadingCircle(context);
        if (mounted) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(e.toString()),
            ),
          );
        }
      }
    }

    //show error if pw dont match
    else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Passwords don't match"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          Background(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 12),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(
                    //   height: h * 20,
                    // ),
                    //Logo
                    Icon(
                      Icons.android_rounded,
                      size: 90,
                      color: Theme.of(context).colorScheme.primary,
                    ),

                    //name
                    MyTextField(
                      controller: nameController,
                      hintText: "Enter your Name",
                      obscureText: false,
                    ),

                    SizedBox(
                      height: 20,
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

                    SizedBox(
                      height: 20,
                    ),

                    MyTextField(
                      controller: confirmPwController,
                      hintText: "Confirm Password",
                      obscureText: true,
                    ),

                    SizedBox(
                      height: 50,
                    ),

                    // login button
                    MyButton(
                      text: 'R E G I S T E R',
                      onTap: register,
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    //Login redirect
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already a member?",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        SizedBox(
                          width: w * 2,
                        ),
                        GestureDetector(
                          onTap: widget.onTap,
                          child: Text(
                            'Login here',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
