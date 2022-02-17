import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo/provider/auth_provider.dart';
import 'package:shamo/theme/theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController usernameController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignUp() async {
      if (await authProvider.register(
        name: nameController.text,
        email: emailController.text,
        username: usernameController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/home');
      } else {}
    }

    Widget _header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Register and Happy Shoping',
              style: subtitleTextStyle,
            ),
          ],
        ),
      );
    }

    Widget _actionBottom() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: TextButton(
          onPressed: () {
            handleSignUp();
            print("object");
          },
          child: Text(
            'Sign Up',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget _fullName() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        child: textInputField(
          controller: nameController,
          title: "Full Name",
          hintText: "Your Full Name",
          icon: Icons.person,
        ),
      );
    }

    Widget _username() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: textInputField(
          controller: usernameController,
          title: "Username",
          hintText: "Your Username",
          icon: Icons.radio_button_checked,
        ),
      );
    }

    Widget _inputEmail() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: textInputField(
          controller: emailController,
          title: "Email Address",
          hintText: "Your Email Address",
          icon: Icons.email,
        ),
      );
    }

    Widget _inputPassword() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: textInputField(
          controller: passwordController,
          title: "Password",
          hintText: "Your Password",
          obscureText: true,
          icon: Icons.lock,
        ),
      );
    }

    Widget _footer() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: secondaryTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Sign in',
                style: purpleTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(),
              _fullName(),
              _username(),
              _inputEmail(),
              _inputPassword(),
              _actionBottom(),
              // Spacer(),
              _footer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget textInputField({
    String? title,
    String? hintText,
    TextEditingController? controller,
    bool obscureText = false,
    IconData? icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 50,
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            color: backgroundColor2,
            borderRadius: BorderRadius.circular(
              12.0,
            ),
          ),
          child: Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Icon(
                    icon,
                    color: primaryColor,
                    size: 17,
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    controller: controller,
                    obscureText: obscureText,
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                      hintText: hintText,
                      hintStyle: subtitleTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
