import 'package:flutter/material.dart';
import 'package:yachtmob/widgets/custom_search_and_filter_appbar.dart';
import 'package:yachtmob/widgets/fly_widget.dart';

class SearchTabSearchResults extends StatelessWidget {
  final VoidCallback onSearchbarTap;
  const SearchTabSearchResults({
    Key? key,
    required this.onSearchbarTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSearchAndFilterAppBar(onSearchbarTap: onSearchbarTap),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  FlyerWidget(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
