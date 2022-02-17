import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(),
              _inputEmail(),
              _inputPassword(),
              _actionBottom(),
              Spacer(),
              _footer(),
            ],
          ),
        ),
      ),
    );
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
            'Login',
            style: primaryTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semibold,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Sign In to Continue',
            style: subtitleTextStyle,
          ),
        ],
      ),
    );
  }

  Widget _inputEmail() {
    return Container(
      margin: EdgeInsets.only(
        top: 70,
      ),
      child: textInputField(
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
        title: "Password",
        hintText: "Your Password",
        obscureText: true,
        icon: Icons.lock,
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
        onPressed: () => Navigator.pushNamed(context, "/home"),
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

  Widget _footer() {
    return Container(
      margin: EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account?',
            style: secondaryTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, "/signUp"),
            child: Text(
              'Sign up',
              style: purpleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
          )
        ],
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
