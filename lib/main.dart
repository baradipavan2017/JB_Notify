import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jb_notify/screens/write_screen.dart';

import 'screens/navigation_screen.dart';
import 'screens/new_screen.dart';
import 'screens/notes_screen.dart';
import 'screens/parents_screen.dart';
import 'screens/prev_questionpapers_screen.dart';
import 'screens/students_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigationScreen(),
      routes: {
        NavigationScreen.routeName: (context) => NavigationScreen(),
        StudentsScreen.routeName: (context) => StudentsScreen(),
        ParentsScreen.routeName: (context) => ParentsScreen(),
        PrevQuestionPaperScreen.routeName: (context) =>
            PrevQuestionPaperScreen(),
        NotesScreen.routeName: (context) => NotesScreen(),
        WriteScreen.routeName:(context) => WriteScreen(),
        NewScreen.routeName:(context) => NewScreen(),
      },
    );
  }
}
