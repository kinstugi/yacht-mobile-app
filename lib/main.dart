import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yachtmob/pages/signup_pages/sign_up_page_phone.dart';
import './pages/auth_home.dart';
import './pages/splash_page.dart';
import './pages/sign_up_page.dart';
import './pages/signup_pages/sign_up_page_email.dart';
import './pages/signup_pages/sign_up_page_password.dart';
import './pages/login_page.dart';
import './pages/signup_pages/verification_page.dart';
import 'pages/root_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deckoy',
      theme: ThemeData.light(),
      home: const AuthHomePage(),
      routes: {
        AuthHomePage.tag: (ctx) => const AuthHomePage(),
        SplashPage.tag: (ctx) => const SplashPage(),
        SignUpPage.tag: (ctx) => const SignUpPage(),
        SignUpPageEmailStep.tag: (ctx) => const SignUpPageEmailStep(),
        SignUpPagePasswordStep.tag: (ctx) => const SignUpPagePasswordStep(),
        SignUpPagePhoneStep.tag: (ctx) => const SignUpPagePhoneStep(),
        SignUpPageVerificationStep.tag: (ctx) =>
            const SignUpPageVerificationStep(),
        LoginPage.tag: (ctx) => const LoginPage(),
        RootPage.tag: (ctx) => const RootPage()
      },
    );
  }
}