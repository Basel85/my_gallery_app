import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class UserLocalDataSource {
  void cacheToken({required String? token});
  void cacheUser({required Map<String,dynamic> user});
}

class UserLocalDataSourceImplementation implements UserLocalDataSource {
  final FlutterSecureStorage _storage;

  UserLocalDataSourceImplementation(this._storage);

  @override
  void cacheToken({required String? token}) {
    if (token != null) {
         _storage.write(key: 'token', value: token);
    }
  }
  
  @override
  void cacheUser({required Map<String, dynamic>? user}) {
    if (user != null) {
      _storage.write(key: 'user', value: user.toString());
    }
  }
}
