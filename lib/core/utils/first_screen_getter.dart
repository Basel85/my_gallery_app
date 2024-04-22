import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:my_gallery_app/core/router/app_router_paths.dart';

class FirstScreenGetter {
  final FlutterSecureStorage _storage;

  FirstScreenGetter({required FlutterSecureStorage storage})
      : _storage = storage;
  Future<String> getTheFirstScreen() async {
    if (await _storage.containsKey(key: 'token')) {
      return AppRouterPaths.gallery;
    }
    return AppRouterPaths.login;
  }
}
