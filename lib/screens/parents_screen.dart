import 'package:flutter/material.dart';
import 'package:jb_notify/data/dummy_data.dart';
import 'package:jb_notify/widgets/list_widget.dart';
import 'package:jb_notify/widgets/parent_list_widget.dart';

class ParentsScreen extends StatelessWidget {
  const ParentsScreen({ Key? key }) : super(key: key);
  static const routeName = '/parents_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5.0,
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListWidget(
                title: dummy_Notifications[index].title,
                subtitle: dummy_Notifications[index].subtitle,
                color: dummy_Notifications[index].color,
                dateTime: dummy_Notifications[index].dateTime,
              );
            },
            itemCount: dummy_Notifications.length,
          )),
    );
  }
}