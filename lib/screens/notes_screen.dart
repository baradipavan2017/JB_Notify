import 'package:flutter/material.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({ Key? key }) : super(key: key);
  static const routeName = '/notes_screen';

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          )),
    );
  }
}