import 'package:flutter/material.dart';
import 'package:yachtmob/constants/ui_constants.dart';
import 'package:yachtmob/widgets/custom_app_for_profile_sub_page.dart';
import 'package:yachtmob/widgets/custom_nav_btn_for_signup_page.dart';
import 'package:yachtmob/widgets/form_label_widget.dart';

class ChangePasswordPage extends StatelessWidget {
  static const String tag = '/change-password-page';

  final inputDecoration = const InputDecoration(
    suffixIcon: Icon(
      Icons.remove_red_eye,
      color: Colors.pink,
    ),
    border: OutlineInputBorder(),
    contentPadding: authInputFieldsContentPadding,
  );

  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const CustomAppbarForProfileSubPages(title: 'Change Password'),
              Expanded(child: _buildForm(context)),
              const Divider(color: Colors.pink, thickness: 1.3),
              CustomNavBtnForSignUpPages(
                text: 'Save',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Form(
        child: Column(
          children: [
            const FormLabelWidget(label: 'Current Password'),
            TextFormField(
              decoration: inputDecoration,
            ),
            const SizedBox(height: 18),
            SizedBox(
              width: double.infinity,
              child: RichText(
                text: const TextSpan(
                  text: 'New Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: ' Min. 6 characters ✓',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            TextFormField(
              decoration: inputDecoration,
            ),
            const SizedBox(height: 18),
            const FormLabelWidget(label: 'Confirm Password'),
            TextFormField(
              decoration: inputDecoration,
            ),
          ],
        ),
      ),
    );
  }
}
