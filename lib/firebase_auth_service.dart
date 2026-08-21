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
    String? errorMessage;
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      await _auth.currentUser?.updateDisplayName(name);
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (error){
      switch (error.code){
        case 'weak-password':
          errorMessage='취약 패스워드';
        case 'email-already-in-use':
          errorMessage='사용중인 이메일';
        default:
          errorMessage = error.message;
      }
    } catch(e){
      throw Exception('회원가입 에러:$e');
    }

  }



  Future<void> signInWithEmail() async {}
  Future<void> resetPassword() async {}
  Future<void> signOut() async {}
  Future<void> deleteAccount() async {}
  Future<void> updateProfile() async {}
}
