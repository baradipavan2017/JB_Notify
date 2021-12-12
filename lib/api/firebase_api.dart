import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';

class FirebaseApi{
  static UploadTask? uploadFile({required String destination,required File file}){
    try{
      final ref = FirebaseStorage.instance.ref(destination);
      return ref.putFile(file);
    }on FirebaseException catch(e){
      print('exception $e');
      return null;
    }
  }

  static UploadTask? uploadBytes({required String destination,required Uint8List data}){
    try{
      final ref = FirebaseStorage.instance.ref(destination);
      return ref.putData(data);
    }on FirebaseException catch(e){
      print('exception $e');
      return null;
    }
  }
}