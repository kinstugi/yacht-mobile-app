import 'package:flutter/material.dart';
import './fly_widget_detail.dart';

class FlyerWidget extends StatelessWidget {
  const FlyerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(7),
          bottomRight: Radius.circular(7),
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: _imageSlider(),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: FlyWidgetDetailsWidget(),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: _likeAndShare(),
          )
        ],
      ),
    );
  }

  Row _likeAndShare() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            color: Colors.pinkAccent,
          ),
        )
      ],
    );
  }

  Widget _imageSlider() {
    return Container(
      width: double.infinity,
      height: 210,
      foregroundDecoration: BoxDecoration(
        color: Colors.blueGrey.withAlpha(60),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        image: DecorationImage(
          image: NetworkImage('https://bit.ly/3tgZumq'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
