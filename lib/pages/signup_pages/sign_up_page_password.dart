import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yachtmob/widgets/custom_nav_btn_for_signup_page.dart';
import 'package:yachtmob/widgets/custom_title_bar_for_signup_page.dart';
import '../../constants/ui_constants.dart';
import './sign_up_page_phone.dart';
import '../../widgets/trailing_widget_for_signup.dart';
import '../../widgets/custom_appbar_for_signup_page_widget.dart';

final hidePassword = StateProvider.autoDispose<bool>((ref) => true);

class SignUpPagePasswordStep extends StatelessWidget {
  static const String tag = "/sign-up-password-step";
  const SignUpPagePasswordStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const CustomAppBarForSignUpPage(
                trailing: TrailingWidgetForSignUpPage(
                  pageNumber: 3,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      const CustomTitleBarForSignUpPages(
                        title: 'Create an account',
                      ),
                      const SizedBox(height: 40),
                      _usernameForm(context)
                    ],
                  ),
                ),
              ),
              Divider(thickness: 1, color: Colors.pink.shade400),
              CustomNavBtnForSignUpPages(
                onPressed: () {
                  Navigator.of(context).pushNamed(SignUpPagePhoneStep.tag);
                },
                text: 'Next',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Form _usernameForm(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: RichText(
              text: TextSpan(
                text: 'New Password ',
                style: Theme.of(context).textTheme.headline6,
                children: const [
                  TextSpan(
                    text: 'Min 6 charactor ✓',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Consumer(
            builder: (ctx, ref, child) {
              final isHidden = ref.watch(hidePassword);
              return TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: isHidden,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  contentPadding: authInputFieldsContentPadding,
                  suffixIcon: IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      ref.watch(hidePassword.state).update((state) => !state);
                    },
                    icon: Icon(isHidden
                        ? FontAwesomeIcons.eyeSlash
                        : FontAwesomeIcons.eye),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
