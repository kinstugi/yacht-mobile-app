import 'package:flutter/material.dart';
import 'package:yachtmob/widgets/form_label_widget.dart';

class BookingDetailTab extends StatelessWidget {
  final bool isPageShowing;
  const BookingDetailTab({
    Key? key,
    required this.isPageShowing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      transform: Matrix4.translationValues(isPageShowing ? 0 : width, 0, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.network(
                      'https://bit.ly/3GljwA7',
                    ),
                  ),
                  const SizedBox(height: 10),
                  const FormLabelWidget(
                    label: 'Title Location Boat Type',
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 10),
                  const FormLabelWidget(label: 'Booking Detail', fontSize: 18),
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: const Text('Date'),
                    subtitle: const Text('Jan 14, 2022 - Jan 21, 2022'),
                    trailing: InkWell(
                      child: const Text(
                        'Edit',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  _buildRowText(
                    leading: 'Schedule for check-in',
                    trailing: '09:30',
                  ),
                  _buildRowText(
                    leading: 'Schedule for check-out',
                    trailing: '15:30',
                  ),
                  const SizedBox(height: 18),
                  _buildRowText(leading: 'Boat Type', trailing: 'Motoryacht'),
                  const SizedBox(height: 18),
                  _buildRowText(leading: 'Location', trailing: 'Istanbul'),
                  const SizedBox(height: 18),
                  _buildRowText(leading: 'Fuel', trailing: 'Included'),
                  const SizedBox(height: 18),
                  _buildRowText(
                    leading: 'Sail',
                    trailing: 'With or without captain',
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1.1),
            _buildSummary(),
            const Divider(thickness: 1.1, color: Colors.pink),
            _buildRowButton(context),
          ],
        ),
      ),
    );
  }

  _buildRowText({required String leading, required String trailing}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leading,
          style: const TextStyle(
            color: Colors.black87,
          ),
        ),
        Text(
          trailing,
          style: const TextStyle(color: Colors.black54),
        ),
      ],
    );
  }

  _buildSummary() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          const FormLabelWidget(label: 'Payment'),
          const SizedBox(height: 15),
          _buildRowText(leading: 'Subtotal', trailing: '3850 TRY'),
          const SizedBox(height: 10),
          _buildRowText(leading: 'Pay Amount', trailing: '3850 TRY'),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  _buildRowButton(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 18),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.pink),
            child: const Text('OPTION'),
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 18),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.pink),
            child: const Text('CHAT'),
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 18),
      ],
    );
  }
}
