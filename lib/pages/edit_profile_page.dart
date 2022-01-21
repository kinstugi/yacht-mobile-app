import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yachtmob/constants/ui_constants.dart';
import 'package:yachtmob/pages/change_password_page.dart';
import 'package:yachtmob/pages/sailing_cv_page.dart';
import 'package:yachtmob/widgets/custom_appbar_for_signup_page_widget.dart';
import 'package:yachtmob/widgets/custom_nav_btn_for_signup_page.dart';
import 'package:yachtmob/widgets/custom_title_bar_for_signup_page.dart';
import 'package:yachtmob/widgets/form_label_widget.dart';

class EditProfilePage extends StatelessWidget {
  static const String tag = '/edit-profile-page';
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
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
              const Divider(thickness: 1, color: Colors.grey),
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
                        _updateDetailsForm(context),
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
              FontAwesomeIcons.userAlt,
              color: Colors.pink,
              size: 35,
            ),
          ),
        )
      ],
    );
  }

  Widget _updateDetailsForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Form(
        child: Column(
          children: [
            const FormLabelWidget(label: 'Gender'),
            DropdownButtonFormField(
              icon: const Icon(
                FontAwesomeIcons.chevronDown,
                color: Colors.pink,
              ),
              hint: const Text('Eg. male'),
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                contentPadding: authInputFieldsContentPadding.copyWith(
                  right: 10,
                ),
              ),
              items: const [
                DropdownMenuItem(
                  child: Text('Male'),
                  value: 'male',
                ),
                DropdownMenuItem(
                  child: Text('Female'),
                  value: 'female',
                ),
                DropdownMenuItem(
                  child: Text('Other'),
                  value: 'other',
                ),
              ],
              onChanged: (val) {},
            ),
            const SizedBox(height: 18),
            const FormLabelWidget(label: 'First Name'),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: authInputFieldsContentPadding,
              ),
            ),
            const SizedBox(height: 18),
            const FormLabelWidget(label: 'Last Name'),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: authInputFieldsContentPadding,
              ),
            ),
            const SizedBox(height: 18),
            const FormLabelWidget(label: 'Date of birth'),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'DD/MM/YYYY',
                border: OutlineInputBorder(),
                contentPadding: authInputFieldsContentPadding,
              ),
            ),
            const SizedBox(height: 18),
            const FormLabelWidget(label: 'Email'),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: authInputFieldsContentPadding,
              ),
            ),
            const FormLabelWidget(label: 'verify email address', onTop: false),
            const SizedBox(height: 18),
            const FormLabelWidget(label: 'Phone number'),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: authInputFieldsContentPadding,
              ),
            ),
            const SizedBox(height: 18),
            const FormLabelWidget(label: 'Address'),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                hintText: 'Ex. Serdar Mh.',
                border: OutlineInputBorder(),
                contentPadding: authInputFieldsContentPadding,
              ),
            ),
            const SizedBox(height: 18),
            const FormLabelWidget(label: 'City'),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: authInputFieldsContentPadding,
              ),
            ),
            const SizedBox(height: 18),
            const FormLabelWidget(label: 'Country'),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: authInputFieldsContentPadding,
              ),
            ),
            const SizedBox(height: 18),
            const FormLabelWidget(label: 'Postal Code'),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: authInputFieldsContentPadding,
              ),
            ),
            const SizedBox(height: 18),
            const FormLabelWidget(label: 'Languages'),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintText: '+ Add language',
                      border: OutlineInputBorder(),
                      contentPadding: authInputFieldsContentPadding,
                    ),
                  ),
                ),
                Expanded(child: Container())
              ],
            ),
            const SizedBox(height: 18),
            const Divider(thickness: 1.25, height: 0),
            ListTile(
              title: const Text('My Sailing CV'),
              trailing: const Icon(
                Icons.chevron_right,
                color: Colors.pink,
              ),
              onTap: () {
                Navigator.of(context).pushNamed(SailingCVPage.tag);
              },
            ),
            const Divider(thickness: 1.25, height: 0),
            ListTile(
              title: const Text('Change Password'),
              trailing: const Icon(
                Icons.chevron_right,
                color: Colors.pink,
              ),
              onTap: () {
                Navigator.of(context).pushNamed(ChangePasswordPage.tag);
              },
            ),
          ],
        ),
      ),
    );
  }
}
