import 'package:firebase_auth/firebase_auth.dart';
class FirebaseAuthService {
  final FirebaseAuth _auth;
  //_auth=FirebaseAuth.instance;
  FirebaseAuthService():_auth=FirebaseAuth.instance {
    _auth.setLanguageCode('kr');
  }

}