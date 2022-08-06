import 'package:flutter/material.dart';
import 'package:shop/Utils/Widgets/custom_text_field.dart';
import 'package:shop/Utils/app_spaces.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  ///SignUp TextField
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool passwordObscureText = true;
  bool confirmPasswordObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(
            controller: usernameController,
            hintText: 'Username',
            fillColor: Colors.amber.withOpacity(.05),
          ),
          CustomTextField(
            controller: emailController,
            hintText: 'Email',
            fillColor: Colors.amber.withOpacity(.05),
          ),
          CustomTextField(
            controller: passwordController,
            hintText: 'Password',
            fillColor: Colors.amber.withOpacity(.05),
            obscureText: passwordObscureText,
            maxlines: 1,
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  passwordObscureText = !passwordObscureText;
                });
              },
              child: Icon(passwordObscureText == true
                  ? Icons.visibility_off
                  : Icons.visibility),
            ),
          ),
          CustomTextField(
            controller: confirmPasswordController,
            hintText: 'Confirm Password',
            fillColor: Colors.amber.withOpacity(.05),
            obscureText: confirmPasswordObscureText,
            maxlines: 1,
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  confirmPasswordObscureText = !confirmPasswordObscureText;
                });
              },
              child: Icon(confirmPasswordObscureText == true
                  ? Icons.visibility_off
                  : Icons.visibility),
            ),
          ),
          AppSpaces.spaces_height_25,
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.amber),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
