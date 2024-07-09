import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:white_cloud/importer.dart';

class Database {
  static Database? _instance;
  late final Isar isar;

  factory Database() {
    return _instance ??
        (() {
          return _instance = Database._();
        })();
  }

  Database._();

  init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = Isar.openSync(
      [UserSchema],
      directory: dir.path,
      inspector: true,
    );
  }

  saveUser({required User user}) async {
    await isar.writeTxn(() async => await isar.users.put(user));
  }

  User getLatestUser() {
    return isar.users.getSync(11)!; // TODO 仮
  }
}