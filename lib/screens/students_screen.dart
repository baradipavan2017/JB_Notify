import 'package:flutter/material.dart';
import 'package:jb_notify/widgets/list_tile_final.dart';
import '../data/dummy_data.dart';
import '../widgets/list_widget.dart';

class StudentsScreen extends StatelessWidget {
  const StudentsScreen({Key? key}) : super(key: key);
  static const routeName = '/students_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 10.0,
          ),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return ListWidget(
                title: dummy_Notifications[index].title,
                subtitle: dummy_Notifications[index].subtitle,
                color: dummy_Notifications[index].color,
                dateTime: dummy_Notifications[index].dateTime,
              );
            },
            itemCount: dummy_Notifications.length, separatorBuilder: (BuildContext context, int index) {
              return Divider(indent: 10.0,endIndent: 10.0,thickness: 1.0,);
          },
          )),
    );
  }
}
