import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_getx_isar_fa_ff/app/model/models/user/user_model.dart';
import 'package:todo_getx_isar_fa_ff/app/model/repositories/user/user_repository.dart';
import 'package:todo_getx_isar_fa_ff/app/model/repositories/user/user_repository_exception.dart';

class UserRepositoryImpl implements UserRepository {
  final FirebaseFirestore _firebaseFirestore;

  UserRepositoryImpl({required FirebaseFirestore firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore;
  @override
  Future<UserModel?> getByUidAuth(String uidAuth) async {
    print('Em UserRepositoryImpl.getByIdAuth - 1 (uidAuth: $uidAuth)');
    var querySnapshot = await _firebaseFirestore
        .collection(UserModel.collection)
        .where('uidAuth', isEqualTo: uidAuth)
        .get();
    print(
        'Em UserRepositoryImpl.getByIdAuth | querySnapshot.size: ${querySnapshot.size}');
    if (querySnapshot.size == 0) {
      // print('Em UserRepositoryImpl.getByIdAuth - 3');
      // print('Nao achei nenhum document em UserModel com uid $uid');
      return null;
    } else if (querySnapshot.size == 1) {
      // print('Em UserRepositoryImpl.getByIdAuth - 4');
      var queryDocumentSnapshot = querySnapshot.docs.first;
      // print('Em UserRepositoryImpl.getByIdAuth - 5');
      try {
        print(
            'Em UserRepositoryImpl.getByIdAuth - 6 ${queryDocumentSnapshot.data()}');
        var temp = UserModel.fromMap(queryDocumentSnapshot.data());
        // print('Em UserRepositoryImpl.getByIdAuth - 7');
        return temp;
      } catch (e) {
        // print('Em UserRepositoryImpl.getByIdAuth - 8');
        throw UserRepositoryException(message: 'Erro em UserModel.fromMap');
      }
    } else {
      print('Em UserRepositoryImpl.getByIdAuth - 9');
      throw UserRepositoryException(
          message: 'Foi encontrado mais de um (user) usuário.');
    }
  }

  @override
  Future<UserModel> create(Map<String, dynamic> data) async {
    try {
      CollectionReference docRef =
          _firebaseFirestore.collection(UserModel.collection);
      String idNew = docRef.doc().id;
      print('create.map1 $data');
      var userModel = UserModel.fromMap(data).copyWith(uuid: idNew);
      print('create.map2 ${userModel.toMap()}');

      await docRef.doc(idNew).set(userModel.toMap());
      return userModel;
    } catch (e) {
      throw UserRepositoryException(
          message: 'Erro em UserRepositoryImpl.create');
    }
  }

  @override
  Future<UserModel?> getByUuid(String uuid) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<void> update(Map<String, dynamic> data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
