import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:shop/Utils/Widgets/custom_text_field.dart';
import 'package:shop/Utils/app_spaces.dart';
import 'package:shop/Views/Auth/Componants/sign_in_from.dart';
import 'package:shop/Views/Auth/Componants/sign_up_form.dart';
import 'package:shop/Views/Auth/Componants/social_login.dart';
import 'package:shop/Views/HomePage/homepage.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool? isSignIn = true;

  TextStyle authButtonSelectedTextStyle = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );
  TextStyle authButtonUnselectedTextStyle = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w300,
  );

  ///SignIn TextField
  TextEditingController emailUserController = TextEditingController();
  TextEditingController passwordUserController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 0.0,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///App Logo
            Center(
              child: Image.asset('assets/logo/logo.png'),
            ),

            AppSpaces.spaces_height_60,

            ///Welcome Text
            Text(
              isSignIn == false ? 'Create Account' : 'Welcome back!',
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),

            AppSpaces.spaces_height_15,

            ///Tabs
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isSignIn = true;
                    });
                  },
                  child: Text(
                    'Sign In',
                    style: isSignIn == true
                        ? authButtonSelectedTextStyle
                        : authButtonUnselectedTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Container(
                    color: Colors.black45,
                    height: 15,
                    width: 1,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isSignIn = false;
                    });
                  },
                  child: Text(
                    'Sign Up',
                    style: isSignIn == true
                        ? authButtonUnselectedTextStyle
                        : authButtonSelectedTextStyle,
                  ),
                ),
              ],
            ),

            ///Form
            AppSpaces.spaces_height_10,
            Expanded(
              child: ListView(
                children: [
                  isSignIn == true ? const SignInForm() : const SignUpForm(),

                  ///Social Login

                  AppSpaces.spaces_height_25,
                  const SocialLogin(),

                  ///Guest Login
                  AppSpaces.spaces_height_25,
                  Center(
                    child: InkWell(
                      onTap: () {
                        Get.to(() => HomePage());
                      },
                      child: const Text(
                        'Continue as Guest',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
