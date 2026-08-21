import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth;
  //_auth=FirebaseAuth.instance;
  FirebaseAuthService() : _auth = FirebaseAuth.instance {
    _auth.setLanguageCode('kr');
  }

  Future<void> signUpWithEmail({
    required String email,
    required String password,
    String? name,
  }) async {
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      await _auth.currentUser?.updateDisplayName(name);
      await _auth.currentUser?.sendEmailVerification();
    }catch(e){
      throw Exception('회원가입 에러:$e');
    }

  }



  Future<void> signInWithEmail() async {}
  Future<void> resetPassword() async {}
  Future<void> signOut() async {}
  Future<void> deleteAccount() async {}
  Future<void> updateProfile() async {}
}
