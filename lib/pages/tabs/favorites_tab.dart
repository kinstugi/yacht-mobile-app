import 'package:flutter/material.dart';
import '../../widgets/fly_widget.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            _pageTitle(context),
            const SizedBox(height: 18),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    FlyerWidget(),
                    SizedBox(height: 35),
                    FlyerWidget(),
                    SizedBox(height: 35),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox _pageTitle(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        'Favorites',
        style: Theme.of(context).textTheme.headline5?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
