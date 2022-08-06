import 'package:flutter/material.dart';
import 'package:shop/Utils/Widgets/custom_text_field.dart';
import 'package:shop/Utils/app_spaces.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  ///SignUp TextField
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool passwordObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            CustomTextField(
              fillColor: Colors.amber.withOpacity(.05),
              controller: usernameController,
              hintText: 'Username or Email',
            ),
            CustomTextField(
              fillColor: Colors.amber.withOpacity(.05),
              controller: passwordController,
              hintText: 'Password',
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
            AppSpaces.spaces_height_25,
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.amber),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
