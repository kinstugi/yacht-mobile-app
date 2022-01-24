import 'package:flutter/material.dart';
import 'package:yachtmob/pages/delegates/search_city_delegate.dart';
import 'package:yachtmob/pages/search_tab/search_tab_home.dart';
import 'package:yachtmob/pages/search_tab/search_tab_search_results.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  String _showSearchReuslts = '';

  void _getSearchResult() async {
    final result = await showSearch(context: context, delegate: CitySearch());
    setState(() {
      _showSearchReuslts = result ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _showSearchReuslts.isEmpty
          ? SearchTabHome(onSearchbarTap: _getSearchResult)
          : SearchTabSearchResults(onSearchbarTap: _getSearchResult),
    );
  }
}
