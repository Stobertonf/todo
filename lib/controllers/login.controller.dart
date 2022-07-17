import 'package:todo/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future login() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser firebaseUser =
        (await _auth.signInWithCredential(credential)).user;
    var token = await firebaseUser.getIdToken();

    user.token = token.token;
    user.email = firebaseUser.email;
    user.name = firebaseUser.displayName;
    user.picture = firebaseUser.photoUrl;
  }

  Future logout() async {
    await FirebaseAuth.instance.signOut();
    user = IUser();
  }
}
