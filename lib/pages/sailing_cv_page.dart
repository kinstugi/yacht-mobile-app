import 'package:flutter/material.dart';
import 'package:yachtmob/constants/ui_constants.dart';
import 'package:yachtmob/widgets/custom_app_for_profile_sub_page.dart';
import 'package:yachtmob/widgets/custom_nav_btn_for_signup_page.dart';
import 'package:yachtmob/widgets/form_label_widget.dart';

class SailingCVPage extends StatelessWidget {
  static const String tag = '/sailing-cv-page';
  const SailingCVPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const CustomAppbarForProfileSubPages(title: 'Sailing CV'),
              Expanded(child: _buildBody(context))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildForm(context),
          const Divider(color: Colors.pink, thickness: 1.3),
          CustomNavBtnForSignUpPages(
            onPressed: () {},
            text: 'Save',
          )
        ],
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Form(
        child: Column(
          children: [
            const FormLabelWidget(label: 'Your Level'),
            TextFormField(
              decoration: const InputDecoration(
                contentPadding: authInputFieldsContentPadding,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 18),
            const FormLabelWidget(label: 'Your Boat Type'),
            TextFormField(
              decoration: const InputDecoration(
                contentPadding: authInputFieldsContentPadding,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 28),
            const FormLabelWidget(label: 'Boat License', fontSize: 24),
            _buildCheckbox(title: 'Coast', checked: true),
            _buildCheckbox(title: 'River'),
            _buildCheckbox(title: 'Open Sea'),
            _buildCheckbox(title: 'Radio'),
            _buildCheckbox(title: 'Licensed professional skipper'),
            const SizedBox(height: 18),
            const FormLabelWidget(
                label: 'Have you ever skippered a boat before?'),
            _buildCheckbox(title: 'Yes'),
            _buildCheckbox(title: 'No'),
            const SizedBox(height: 28),
            Row(
              children: const [
                Text(
                  'About you',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
                Icon(Icons.info_outline, color: Colors.blue),
              ],
            ),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Write your description ...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildCheckbox({required String title, bool checked = false}) {
    return CheckboxListTile(
      value: checked,
      onChanged: (val) {},
      title: Text(title),
      contentPadding: const EdgeInsets.all(0),
    );
  }
}
