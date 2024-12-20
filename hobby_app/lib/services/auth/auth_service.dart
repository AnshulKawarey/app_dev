import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  //getting current user and uid
  User? getCurrentUser() => _auth.currentUser;
  String getCurrentUid() => _auth.currentUser!.uid;

  //login method using email and pw
  Future<UserCredential> loginEmailPassword(String email, password) async {
    //try login
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential;
    }

    //catch errors
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //register method using email and pw
  Future<UserCredential> registerEmailPassword(String email, password) async {
    //try login
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    }

    //catch errors
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //logout
  Future<void> logout() async {
    await _auth.signOut();
  }
}
