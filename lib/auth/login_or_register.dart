

import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_backend/Pages/login_page.dart';
import 'package:food_delivery_app_with_backend/Pages/register_page.dart';

class LoginOfRegister extends StatefulWidget {
  const LoginOfRegister({super.key});

  @override
  State<LoginOfRegister> createState() => _LoginOfRegisterState();
}

class _LoginOfRegisterState extends State<LoginOfRegister> {

  // initially, show login page
  bool showLoginPage = true;


  //toggle betwwen login and register page

  void toggleBetwwenLoginAndRegisterPage(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }


  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(onPressed: toggleBetwwenLoginAndRegisterPage);
    }else {
      return RegisterPage(onPressed: toggleBetwwenLoginAndRegisterPage);
    }
  }
}