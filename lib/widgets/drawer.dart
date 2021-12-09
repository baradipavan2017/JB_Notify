import 'package:flutter/material.dart';
import 'package:jb_notify/screens/notes_screen.dart';
import 'package:jb_notify/screens/prev_questionpapers_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                child: Image.asset('lib/assets/images/JBnew.png'),
                backgroundColor: Colors.transparent,
                radius: 40.0,
              ),
              const Text(
                'JB-Notify',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ),
        //  const Card(
        //    child: ListTile(
        //     leading: Icon(Icons.notifications),
        //     title: Text(
        //       'Notifications',
        //       style: TextStyle(
        //         fontSize: 16.0,
        //         fontWeight: FontWeight.w600,
        //       ),
        //     ),
            // onTap: (){
            //   Navigator.popAndPushNamed(context, routeName)
            // },
        // ),
        //  ),
        
        ListTile(
          leading: const Icon(Icons.book_online),
          title:const Text(
            'Prev Question Paper',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          onTap: () {
            Navigator.popAndPushNamed(
                context, PrevQuestionPaperScreen.routeName);
          },
        ),
        Divider(),
        ListTile(
          leading: const Icon(Icons.book),
          title: const Text(
            'Notes',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          onTap: () {
            Navigator.popAndPushNamed(context, NotesScreen.routeName);
          },
        ),
        Divider(),
      ]),
    );
  }
}
