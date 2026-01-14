import 'package:firebase_auth/firebase_auth.dart';
import 'package:flashcards/utils/result.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? getCurrentUser() => _firebaseAuth.currentUser;

  Stream<User?> userChanges() => _firebaseAuth.userChanges();

  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();

  Stream<User?> idTokenChanges() => _firebaseAuth.idTokenChanges();

  Future<Result<User>> register({
    required String email,
    required String password,
  }) async {
    try {
      var credentials = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Result.ok(credentials.user!);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> updateDisplayName(User user, String displayName) async {
    try {
      await user.updateDisplayName(displayName);
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> updatePassword(User user, String password) async {
    try {
      await user.updatePassword(password);
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<User>> verifyBeforeUpdateEmail(String email) async {
    try {
      var user = _firebaseAuth.currentUser;
      if (user == null) {
        return Result.error(Exception("Current user is null"));
      }

      await user.verifyBeforeUpdateEmail(email);
      return Result.ok(user);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<User>> login({
    required String email,
    required String password,
  }) async {
    try {
      var credentials = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Result.ok(credentials.user!);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<User>> sendEmailVerification() async {
    try {
      var user = _firebaseAuth.currentUser;
      if (user == null) {
        return Result.error(Exception("User is not logged in"));
      }

      await user.sendEmailVerification();
      return Result.ok(user);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> reauthenticateWithCredential(String password) async {
    try {
      var user = _firebaseAuth.currentUser;
      if (user == null) {
        return Result.error(Exception("User is not logged in"));
      }
      var credential = EmailAuthProvider.credential(
        email: user.email!,
        password: password,
      );
      await user.reauthenticateWithCredential(credential);
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<User>> deleteAccount() async {
    try {
      var user = _firebaseAuth.currentUser;
      if (user == null) {
        return Result.error(Exception("Current user is null"));
      }

      await _firebaseAuth.currentUser!.delete();
      return Result.ok(user);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> sendPasswordResetEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
