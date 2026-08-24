import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

class FirebaseStorageService {
  final storageRef = FirebaseStorage.instance.ref();

  Future<String> uploadProfileImage({required Uint8List bytes, required String path, String? uid,})async{
    return '';
  }
}