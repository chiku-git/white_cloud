import 'package:white_cloud/infrastructure/database.dart';
import '../model/db/user.dart';

class DBRepository {
  static DBRepository? _instance;
  late final Database _database;
  factory DBRepository() {
    return _instance ??
        (() {
          return _instance = DBRepository._();
        })();
  }

  DBRepository._() {
    _database = Database();
  }


  saveUser({required User user}) {
    _database.saveUser(user: user);
  }

  saveUserFromJson({required Map<String, dynamic> json}) {
    saveUser(user: User.fromJson(json));
  }
}
