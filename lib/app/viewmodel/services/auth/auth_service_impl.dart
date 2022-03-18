import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_getx_isar_fa_ff/app/model/repositories/auth/auth_repository.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/services/auth/auth_service.dart';

class AuthServiceImpl implements AuthService {
  final AuthRepository _authRepository;
  AuthServiceImpl({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;
  @override
  Future<User?> register({required String email, required String password}) =>
      _authRepository.register(email: email, password: password);

  @override
  Future<User?> loginEmail({required String email, required String password}) =>
      _authRepository.loginEmail(email: email, password: password);

  @override
  Future<void> forgotPassword(String email) =>
      _authRepository.forgotPassword(email);

  @override
  Future<User?> loginGoogle() => _authRepository.loginGoogle();

  @override
  Future<void> logout() => _authRepository.logout();

  @override
  Future<void> updateDisplayName(String name) =>
      _authRepository.updateDisplayName(name);

  @override
  Future<void> updatePhotoURL(String photoUrl) =>
      _authRepository.updatePhotoURL(photoUrl);
}
