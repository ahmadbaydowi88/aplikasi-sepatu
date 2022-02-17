import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo/page/cart_page.dart';
import 'package:shamo/page/checkout_page.dart';
import 'package:shamo/page/checkout_success.dart';
import 'package:shamo/page/detail_chat_page.dart';
import 'package:shamo/page/edit_profile.dart';
import 'package:shamo/page/home/main_page.dart';
import 'package:shamo/page/product_page.dart';
import 'package:shamo/page/signIn_page.dart';
import 'package:shamo/page/signup_page.dart';
import 'package:shamo/page/splash_screen.dart';
import 'package:shamo/provider/auth_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => SplashScreen(),
          "/signIn": (context) => SignInPage(),
          "/signUp": (context) => SignUpPage(),
          "/home": (context) => MainPage(),
          "/detail-chat": (context) => DatailChatPage(),
          "/edit-profile": (context) => EditProfile(),
          "/product-page": (context) => ProductPage(),
          "/cart-page": (context) => CartPage(),
          "/checkout-page": (context) => CheckoutPage(),
          "/checkout-success": (context) => CheckSuccess(),
        },
      ),
    );
  }
}
