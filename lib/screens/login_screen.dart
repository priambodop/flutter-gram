import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gram/utils/colors.dart';
import 'package:flutter_gram/widgets/text_field_input.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),

              // svg image
              SvgPicture.asset(
                'assets/ic_instagram.svg',
                color: primaryColor,
                height: 64,
              ),
              const SizedBox(
                height: 64,
              ),
              // text field for email
              TextFieldInput(
                  textEditingController: _emailController,
                  hintText: 'Enter email address...',
                  textInputType: TextInputType.emailAddress),

              const SizedBox(height: 24),

              // text field for password
              TextFieldInput(
                textEditingController: _passwordController,
                hintText: 'Enter your password...',
                textInputType: TextInputType.text,
                isPass: true,
              ),

              const SizedBox(height: 24),

              // button login
              Container(
                child: const Text('Log In'),
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  color: blueColor,
                ),
              ),

              const SizedBox(height: 12),

              Flexible(
                child: Container(),
                flex: 2,
              ),

              // Tansitioning to sign up page
            ],
          ),
        ),
      ),
    );
  }
}
