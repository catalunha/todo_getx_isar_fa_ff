import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:todo_getx_isar_fa_ff/app/routes.dart';
import 'package:todo_getx_isar_fa_ff/app/viewmodel/services/auth/auth_service.dart';

class AuthController extends GetxController {
  final FirebaseAuth _firebaseAuth;
  final AuthService _authService;
  AuthController({
    required FirebaseAuth firebaseAuth,
    required AuthService authService,
  })  : _firebaseAuth = firebaseAuth,
        _authService = authService;

  Rx<User?> _userFirebaseAuth = Rx<User?>(FirebaseAuth.instance.currentUser);
  User? get user => _userFirebaseAuth.value;

  @override
  onInit() {
    _userFirebaseAuth.bindStream(_firebaseAuth.authStateChanges());
    _userFirebaseAuth.bindStream(_firebaseAuth.userChanges());
    ever<User?>(_userFirebaseAuth, (user) async {
      if (user != null) {
        print('userAdditionalInfo');
        Get.offAllNamed(Routes.userAdditionalInfo);
      } else {
        print('login');
        Get.offAllNamed(Routes.authLogin);
      }
    });
    super.onInit();
  }

  Future<void> logout() => _authService.logout();
}
