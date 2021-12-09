import 'package:flutter/material.dart';

class PrevQuestionPaperScreen extends StatelessWidget {
  const PrevQuestionPaperScreen({Key? key}) : super(key: key);
  static const routeName = '/prev_questionpaper_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);

            },
            icon: Icon(Icons.arrow_back),
          )),
      body: Container(
        child: Text('PrevQuestion Paper Screen'),
      ),
    );
  }
}
