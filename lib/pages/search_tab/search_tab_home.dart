import 'package:flutter/material.dart';
import 'package:yachtmob/widgets/boat_type_tile.dart';
import 'package:yachtmob/widgets/custom_search_bar.dart';
import 'package:yachtmob/widgets/destination_card_widget.dart';

class SearchTabHome extends StatelessWidget {
  final VoidCallback onSearchbarTap;
  const SearchTabHome({
    Key? key,
    required this.onSearchbarTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FlutterLogo(size: 40),
        const SizedBox(height: 10),
        CustomSearchBar(
          hintText: 'Where do you want to sail',
          onTap: onSearchbarTap,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _sectionTitle(context, 'Your Search'),
                _boatsTypeList(),
                _sectionTitle(context, 'Dream destinations'),
                const DestinationCardWidget(
                  imageUrl: 'https://bit.ly/3tgZumq',
                  location: 'Guadeloupe',
                ),
                const SizedBox(height: 25),
                const DestinationCardWidget(
                  imageUrl: 'https://bit.ly/3fblIya',
                  location: 'Cancun',
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        )
      ],
    );
  }

  Padding _boatsTypeList() {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            BoatTypeTileWidget(
              imageUrl: 'https://bit.ly/3ngYnQ7',
              title: 'Motorboat',
            ),
            SizedBox(width: 10),
            BoatTypeTileWidget(
              imageUrl: 'https://bit.ly/3GljwA7',
              title: 'Sailboat',
            ),
            SizedBox(width: 10),
            BoatTypeTileWidget(
              imageUrl: 'https://bit.ly/3FeVS6R',
              title: 'Catamaran',
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }

  Padding _sectionTitle(BuildContext context, String txt) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          txt,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
