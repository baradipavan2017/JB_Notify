import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jb_notify/data/dummy_data.dart';
import 'package:jb_notify/models/notices.dart';
import 'package:jb_notify/widgets/list_tile_final.dart';

class NewScreen extends StatefulWidget {
  NewScreen({Key? key}) : super(key: key);
  static const routeName = '/new-screen';
  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  final dbRef = FirebaseDatabase.instance.reference().child('notices');

  //List list = List.empty();
  final list = <List>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 10,
          ),
          child: StreamBuilder(
            stream: dbRef.orderByKey().limitToLast(10).onValue,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text('N0 Data found'),
                );
              }
              if (snapshot.hasData && !snapshot.hasError) {
                final listTiles = <ListTileFinal>[];
                final myNotices = Map<String, dynamic>.from(
                    (snapshot.data! as Event).snapshot.value);
                listTiles.addAll(myNotices.values.map((value) {
                  final notices =
                      Notices.fromRTDB(Map<String, dynamic>.from(value));
                  return ListTileFinal(
                      title: notices.title,
                      subtitle: notices.description,
                      url: notices.url,
                      docURL: notices.documentUrl);

                }));
                return ListView(
                  children: listTiles,
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}
