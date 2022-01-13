import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './login_page.dart';
import '../widgets/custom_separator_widget.dart';
import '../widgets/social_media_auth_button.dart';
import './sign_up_page.dart';

class AuthHomePage extends StatelessWidget {
  static const String tag = "/auth-home-page";
  const AuthHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const FlutterLogo(size: 45),
              Text(
                'Welcome',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
              ),
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.pink.shade300),
                onPressed: () =>
                    Navigator.of(context).pushNamed(SignUpPage.tag),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Sign Up'),
                  ],
                ),
              ),
              const CustomSeparator(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.pink.shade300),
                onPressed: () {
                  Navigator.of(context).pushNamed(LoginPage.tag);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Sign In'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
