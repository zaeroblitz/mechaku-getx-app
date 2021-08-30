part of 'services.dart';

class AuthService {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
    required String username,
  }) async {
    try {
      UserCredential _userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(
        id: _userCredential.user!.uid,
        email: email,
        name: name,
        username: username,
        balance: 2000000,
      );

      await UserService().setUser(user);

      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.defaultDialog(
          title: 'Error',
          middleText: 'The password provided is too weak.',
        );

        throw e.code;
      } else if (e.code == 'email-already-in-use') {
        Get.defaultDialog(
          title: 'Error',
          middleText: 'The account already exists for that email.',
        );

        throw e.code;
      } else {
        throw e.code;
      }
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential _userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      UserModel user =
          await UserService().getUserById(_userCredential.user!.uid);
      return user;
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        Get.defaultDialog(
          title: 'Error',
          middleText: 'No user found for that email.',
        );

        throw e.code;
      } else if (e.code == 'wrong-password') {
        Get.defaultDialog(
          title: 'Error',
          middleText: 'Wrong password provided for that user.',
        );

        throw e.code;
      } else {
        throw e.code;
      }
    } catch (e) {
      throw e;
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw e;
    }
  }
}
