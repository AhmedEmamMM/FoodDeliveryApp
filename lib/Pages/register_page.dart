import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_backend/Components/custom_text_field.dart';
import 'package:food_delivery_app_with_backend/Components/custum_button.dart';
import 'package:food_delivery_app_with_backend/Components/space.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onPressed;
  const RegisterPage({super.key,required this.onPressed});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

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
                  "Let's create an Account",
                  style: TextStyle(
                      fontSize: 16, color: themeColorScheme.inversePrimary),
                ),

                const VirtecalSpace(height: 25),

                // email textfield
                CustomTextField(
                  hint: "Email",
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
                  hint: "Password",
                  controllerr: passwordController,
                  textInputAction: TextInputAction.next,
                  obscuretype: true,
                  icon: Icon(
                    Icons.lock,
                    color: themeColorScheme.background,
                  ),
                  inputTextColor: themeColorScheme.background,
                  boxShadowColor: themeColorScheme.inversePrimary,
                  bgColor: themeColorScheme.inversePrimary,
                  hintStyleColors: themeColorScheme.background,
                ),

                const VirtecalSpace(height: 25),

                // Confirm password textfield
                CustomTextField(
                  hint: "Confirm password",
                  controllerr: confirmPasswordController,
                  textInputAction: TextInputAction.done,
                  obscuretype: true,
                  icon: Icon(
                    Icons.lock,
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
                  onPressed: () {},
                  text: "Register",
                  horizontalPadding: 150,
                  color: themeColorScheme.inversePrimary,
                  textColor: themeColorScheme.background,
                  circularBorderRadius: 12,
                ),
                const VirtecalSpace(height: 25),
                // dont have an account ? register now
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Already Have an Account ?",
                    style: TextStyle(
                        fontSize: 16, color: themeColorScheme.inversePrimary),
                  ),
                  TextButton(
                    onPressed: widget.onPressed,
                    child: Text(
                      "Login Now ",
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
