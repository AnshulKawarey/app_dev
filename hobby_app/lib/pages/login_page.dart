import 'package:flutter/material.dart';
import 'package:hobby_app/components/background.dart';
import 'package:hobby_app/components/constants.dart';
import 'package:hobby_app/components/my_button.dart';
import 'package:hobby_app/components/my_loading_circle.dart';
import 'package:hobby_app/components/my_text_field.dart';
import 'package:hobby_app/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({
    super.key,
    required this.onTap,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = AuthService();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwController = TextEditingController();

  void login() async {
    showLoadingCircle(context);
    try {
      _auth.loginEmailPassword(emailController.text, pwController.text);

      hideLoadingCircle(context);
    } catch (e) {
      hideLoadingCircle(context);
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
                    Image(
                      image: AssetImage('assets/logo/pixelcut.png'),
                      height: w * 60,
                      width: w * 60,
                    ),

                    SizedBox(
                      height: h * 2,
                    ),

                    //email
                    MyTextField(
                      controller: emailController,
                      hintText: "Enter Email",
                      obscureText: false,
                    ),

                    SizedBox(
                      height: h * 2,
                    ),

                    //password
                    MyTextField(
                      controller: pwController,
                      hintText: "Enter Password",
                      obscureText: true,
                    ),

                    SizedBox(
                      height: h,
                    ),

                    //Forgot password
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: h * 5,
                    ),

                    // login button
                    MyButton(
                      text: 'L O G I N',
                      onTap: login,
                    ),

                    SizedBox(
                      height: h * 2,
                    ),

                    //Signup redirect
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Not already a member?",
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
                            'Register Now',
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
