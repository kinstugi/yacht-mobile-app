import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FlyWidgetDetailsWidget extends StatelessWidget {
  const FlyWidgetDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(7),
          bottomRight: Radius.circular(7),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: const [
              Icon(Icons.people_outline, size: 18),
              SizedBox(width: 8),
              Text('10 . LE GOSSER')
            ],
          ),
          const SizedBox(
            width: double.infinity,
            child: Text(
              'BENETEAU flyer 6.6 spacedeck',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            width: double.infinity,
            child: Text(
              'From 1500₺ per day',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          Row(
            children: [
              RatingBar.builder(
                itemSize: 18,
                initialRating: 4.5,
                minRating: 1,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder: (ctx, _) => const Icon(
                  Icons.star,
                  color: Colors.blue,
                  size: 13,
                ),
                onRatingUpdate: (rating) {},
              ),
              const SizedBox(width: 3),
              const Text(
                '53 . Super Owner . Pro',
                style: TextStyle(
                  fontSize: 13,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
