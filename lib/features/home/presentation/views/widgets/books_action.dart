import 'package:bookly_app/core/utilies/functions/url_launcher.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children:  [
          const Expanded(
            child: CustomButton(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
            ),
            text: '19.99',
          ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async{
                launchCustomUrl(context, bookModel.volumeInfo.previewLink!);
              },
              fontSized: 12,
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            text: getText(bookModel),
          ),
          ),
        ],
      ),
    );
  }

  getText(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink==null){
      return 'Not Available';
    }
    else{
      return 'Free Preview';
    }
  }
}
