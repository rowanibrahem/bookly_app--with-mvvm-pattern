import 'package:flutter/material.dart';


class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder:(context, index){
          return  Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            // child: BookListViewItem(
            //   bookModel: state.books[index],
            // ),
          );
        }
    );
  }
}
