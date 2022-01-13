import 'package:flutter/material.dart';
import 'package:yachtmob/pages/root_page.dart';
import 'package:yachtmob/widgets/custom_nav_btn_for_signup_page.dart';
import '../../widgets/custom_appbar_for_signup_page_widget.dart';
import '../../constants/ui_constants.dart';
import '../../widgets/custom_title_bar_for_signup_page.dart';

class SignUpPageVerificationStep extends StatelessWidget {
  static const String tag = "/sign-up-verification-step";
  const SignUpPageVerificationStep({Key? key}) : super(key: key);

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
                    'Ignore this step',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      const CustomTitleBarForSignUpPages(
                        title: 'Pending Verification',
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
                  Navigator.of(context).pushNamed(RootPage.tag);
                },
                text: 'Confirm',
              ),
              CustomNavBtnForSignUpPages(
                onPressed: () {
                  Navigator.of(context).pushNamed(RootPage.tag);
                },
                text: 'Resend verification code',
                outlined: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Form _usernameForm(BuildContext context) {
    return Form(
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                contentPadding: authInputFieldsContentPadding,
              ),
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                contentPadding: authInputFieldsContentPadding,
              ),
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                contentPadding: authInputFieldsContentPadding,
              ),
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: TextFormField(
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                contentPadding: authInputFieldsContentPadding,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
