import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_backend/Components/custom_text_field.dart';
import 'package:food_delivery_app_with_backend/Components/custum_button.dart';
import 'package:food_delivery_app_with_backend/Components/space.dart';
import 'package:food_delivery_app_with_backend/Pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onPressed;
  const LoginPage({super.key, required this.onPressed});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    /*

    fill out authantication here... after the ui

    */

    // navigate to the home page

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    var themeColorScheme = Theme.of(context).colorScheme;
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: themeColorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // L O G O
                Icon(
                  Icons.lock_open_rounded,
                  size: 100,
                  color: themeColorScheme.inversePrimary,
                ),

                const VirtecalSpace(height: 25),
                // Welcome back massage
                Text(
                  "Food Delivery App",
                  style: TextStyle(
                      fontSize: 16, color: themeColorScheme.inversePrimary),
                ),

                const VirtecalSpace(height: 25),

                // email textfield
                CustomTextField(
                  hint: "Enter your email",
                  textInputAction: TextInputAction.next,
                  controllerr: emailController,
                  icon: Icon(
                    Icons.email,
                    color: themeColorScheme.background,
                  ),
                  inputTextColor: themeColorScheme.background,
                  bgColor: themeColorScheme.inversePrimary,
                  boxShadowColor: themeColorScheme.inversePrimary,
                  hintStyleColors: themeColorScheme.background,
                ),

                const VirtecalSpace(height: 25),

                // password textfield
                CustomTextField(
                  hint: "Enter your password",
                  controllerr: passwordController,
                  textInputAction: TextInputAction.done,
                  obscuretype: true,
                  icon: Icon(
                    Icons.password,
                    color: themeColorScheme.background,
                  ),
                  inputTextColor: themeColorScheme.background,
                  boxShadowColor: themeColorScheme.inversePrimary,
                  bgColor: themeColorScheme.inversePrimary,
                  hintStyleColors: themeColorScheme.background,
                ),
                const VirtecalSpace(
                  height: 35,
                ),
                // sign in button
                MyButton(
                  onPressed: login,
                  text: "Sign in",
                  horizontalPadding: 158,
                  color: themeColorScheme.inversePrimary,
                  textColor: themeColorScheme.background,
                  circularBorderRadius: 12,
                ),
                const VirtecalSpace(height: 25),
                // dont have an account ? register now
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Don't Have an Account ?",
                    style: TextStyle(
                        fontSize: 16, color: themeColorScheme.inversePrimary),
                  ),
                  TextButton(
                    onPressed: widget.onPressed,
                    child: Text(
                      "Register Now ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: themeColorScheme.inversePrimary,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
