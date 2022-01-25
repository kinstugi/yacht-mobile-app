import 'package:flutter/material.dart';
import 'package:yachtmob/widgets/fly_widget.dart';

class ListingsPage extends StatelessWidget {
  static const String tag = '/listing-page';
  const ListingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(context),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add New'),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const FlyerWidget(),
                      const SizedBox(height: 35),
                      const FlyerWidget(),
                      const SizedBox(height: 35),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        children: [
          InkWell(
            child: const FlutterLogo(size: 30),
            onTap: () => Navigator.of(context).pop(),
          ),
          const SizedBox(width: 10),
          Text(
            'DECKOY',
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
