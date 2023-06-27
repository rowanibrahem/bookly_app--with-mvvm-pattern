import 'package:bookly_app/core/utilies/styles.dart';
import 'package:bookly_app/features/search/presentations/views/widgets/search_result.dart';
import 'package:flutter/material.dart';

import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
              'Search Result',
            style: Styles.textStyle14,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
