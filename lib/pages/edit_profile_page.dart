import 'package:flutter/material.dart';
import 'package:yachtmob/widgets/custom_appbar_for_signup_page_widget.dart';
import 'package:yachtmob/widgets/custom_nav_btn_for_signup_page.dart';
import 'package:yachtmob/widgets/custom_title_bar_for_signup_page.dart';

class EditProfilePage extends StatelessWidget {
  static const String tag = '/edit-profile-page';
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBarForSignUpPage(
              trailing: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const Divider(thickness: 1, color: Colors.lightBlue),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      const CustomTitleBarForSignUpPages(
                        title: 'My Profile',
                        color: Colors.black,
                      ),
                      const SizedBox(height: 10),
                      _profilePicture(),
                      _updateDetailsForm(),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(thickness: 1, color: Colors.pink),
            CustomNavBtnForSignUpPages(
              onPressed: () {},
              text: 'Save',
            )
          ],
        ),
      ),
    );
  }

  Widget _profilePicture() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Profile Picture',
                style: TextStyle(color: Colors.pink),
              ),
              Text('Add picture')
            ],
          ),
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.grey),
          ),
          child: const Center(
            child: Icon(
              Icons.person,
              color: Colors.pink,
              size: 40,
            ),
          ),
        )
      ],
    );
  }

  Widget _updateDetailsForm() {
    return Form(
      child: Column(
        children: [],
      ),
    );
  }
}
