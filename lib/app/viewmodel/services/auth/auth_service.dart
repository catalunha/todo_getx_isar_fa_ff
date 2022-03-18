import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthService {
  Future<User?> register({required String email, required String password});
  Future<User?> loginEmail({required String email, required String password});
  Future<void> forgotPassword(String email);

  Future<User?> loginGoogle();

  Future<void> logout();

  Future<void> updateDisplayName(String name);
  Future<void> updatePhotoURL(String photoUrl);
}
