import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yachtmob/constants/ui_constants.dart';
import 'package:yachtmob/widgets/custom_separator_widget.dart';
import 'package:yachtmob/widgets/social_media_auth_button.dart';
import '../widgets/custom_appbar_for_signup_page_widget.dart';

class LoginPage extends StatelessWidget {
  static const String tag = '/login-page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              CustomAppBarForSignUpPage(
                trailing: TextButton(
                  onPressed: () {},
                  child: Text(
                    'I forgot my password',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              Text(
                'Login',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _loginForm(context),
                      const CustomSeparator(),
                      SocialMediaAuthButton(
                        btnText: 'Continue with Facebook',
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.facebookSquare),
                      ),
                      SocialMediaAuthButton(
                        btnText: 'Continue with Google',
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.google,
                          color: Colors.redAccent,
                        ),
                      ),
                      SocialMediaAuthButton(
                        btnText: 'Continue with Apple',
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.apple,
                          color: Colors.black,
                        ),
                      ),
                      SocialMediaAuthButton(
                        btnText: 'Continue with Google',
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.twitter),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: RichText(
                  text: const TextSpan(
                    text:
                        'By clicking on Continue with Facebook or Sign Up you agree to our ',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'terms & conditions',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Form _loginForm(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 25),
          TextFormField(
            style: loginPageInputFieldTextStyle,
            decoration: const InputDecoration(
              hintText: 'Email',
              hintStyle: loginPageInputFieldTextStyle,
              contentPadding: authInputFieldsContentPadding,
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 25),
          TextFormField(
            style: loginPageInputFieldTextStyle,
            obscureText: true,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Password',
              hintStyle: loginPageInputFieldTextStyle,
              contentPadding: authInputFieldsContentPadding,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.eyeSlash,
                  color: Colors.pink,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
