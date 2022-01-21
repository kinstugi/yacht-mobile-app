import 'package:flutter/material.dart';
import 'package:yachtmob/constants/ui_constants.dart';
import 'package:yachtmob/pages/signup_pages/sign_up_page_email.dart';
import 'package:yachtmob/widgets/custom_nav_btn_for_signup_page.dart';
import 'package:yachtmob/widgets/custom_title_bar_for_signup_page.dart';
import 'package:yachtmob/widgets/form_label_widget.dart';
import 'package:yachtmob/widgets/trailing_widget_for_signup.dart';
import '../widgets/custom_appbar_for_signup_page_widget.dart';

class SignUpPage extends StatelessWidget {
  static const String tag = "/sign-up";
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const CustomAppBarForSignUpPage(
                trailing: TrailingWidgetForSignUpPage(),
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
                  Navigator.of(context).pushNamed(SignUpPageEmailStep.tag);
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
          const FormLabelWidget(label: 'First Name'),
          const SizedBox(height: 5),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: authInputFieldsContentPadding,
            ),
          ),
          const SizedBox(height: 30),
          const FormLabelWidget(label: 'Last Name'),
          const SizedBox(height: 5),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: authInputFieldsContentPadding,
            ),
          ),
        ],
      ),
    );
  }
}
