import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:jb_notify/api/firebase_api.dart';

class WriteScreen extends StatefulWidget {
  WriteScreen({Key? key}) : super(key: key);
  static const routeName = '/write_screen';

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  final database = FirebaseDatabase.instance.reference();

  File? file;
  UploadTask? task;
  Future? urlDownload;
   String? urlDatabase;

  @override
  Widget build(BuildContext context) {
    TextEditingController _urlController = TextEditingController();
    TextEditingController _titleController = TextEditingController();
    TextEditingController _descCOntroller = TextEditingController();
    // DB path
    final notice = database.child('/notices');
    final dateTime = DateTime.now();

    final fileName = file != null ? basename(file!.path) : 'NO File Selected';
    //creating file name
    return Scaffold(
      appBar: AppBar(
        title: Text('Write screen'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: Column(
          children: [
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(
                label: Text('Enter title'),
                hintText: 'Enter your notice title',
              ),
            ),
            TextFormField(
              controller: _descCOntroller,
              decoration: InputDecoration(
                label: Text('Enter description'),
                hintText: 'Enter your notice title',
              ),
            ),
            TextFormField(
              controller: _urlController,
              initialValue: null,
              decoration: InputDecoration(
                label: Text('Enter url'),
                hintText: 'Enter url',
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text('Uplood Document'),
                ElevatedButton(
                  onPressed: () {
                    uploadFile();
                  },
                  child: Text('Select file'),
                ),
              ],
            ),
            Text(
              fileName,
              style: TextStyle(fontSize: 16.0),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     uploadFile();
            //   },
            //   child: Text('Push File'),
            // ),
            // task != null ? buildUploadStatus(task!) : Container(),
            ElevatedButton(
              onPressed: () async {
                try {
                  await notice.push().set({
                    'title': _titleController.text,
                    'description': _descCOntroller.text,
                    'datetime': dateTime.toString(),
                    'url': _urlController.text,
                    'documentURl':  urlDatabase,
                  });
                  print('data pushed successfully');
                } catch (e) {
                  print('erroe $e');
                }
                print(_titleController.text);
                print(_descCOntroller.text);
              },
              child: Text('Push data'),
            )
          ],
        ),
      ),
    );
  }

  // Future selectFile() async {
  //   try {
  //     final result = await FilePicker.platform.pickFiles(allowMultiple: false);
  //     if (result == null) return;
  //     final path = result.files.single.path!;
  //     setState(() => file = File(path));
  //     print('file selected');
  //   } catch (e) {
  //     print('erroe $e');
  //   }
  // }

  Future uploadFile() async {
    try {

      //selecting a file
      final result = await FilePicker.platform.pickFiles(allowMultiple: false);
      if (result == null) return;
      final path = result.files.single.path!;
      file = File(path);
      setState(() => file = File(path));

      //pushing a file to firestore storage
      if (file == null) return;
      final filename = basename(file!.path);
      final destination = 'files/$filename';

      task = FirebaseApi.uploadFile(destination: destination, file: file!);
      //setState(() {});
      // to get the url of the file to download
      if (task == null) return null;

      final snapShot = await task!.whenComplete(() {});
      urlDownload = snapShot.ref.getDownloadURL();

      urlDownload?.then((value) {
       urlDatabase = value;
      });
      print(urlDatabase);

    } catch (e) {
      print('e $e');
    }
  }



  Widget buildUploadStatus(UploadTask task) => StreamBuilder<TaskSnapshot>(
        stream: task.snapshotEvents,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final snap = snapshot.data!;
            final progress = ((snap.bytesTransferred / snap.totalBytes)*100).toStringAsFixed(2);
            return Text(
              '$progress',
              style: TextStyle(fontSize: 14.0),
            );
          } else {
            return Container();
          }
        },
      );
}
