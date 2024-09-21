import 'package:white_cloud/infrastructure/database.dart';
import 'package:white_cloud/importer.dart';

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

  final List<PostDigest> _digests = [];

  add(List<PostDigest> digests) {
    for (var digest in digests) {
      final index = _digests.indexWhere((d) => d.post.id == digest.post.id);
      if (index != -1) {
        _digests[index] = digest;
      } else {
        _digests.add(digest);
      }
    }
  }

  update(PostDigest digest) {
    add([digest]);
  }

  PostDigest findDigestBy(PostDigest digest) {
    return _digests.where((e) => e.post.id == digest.post.id).first;
  }

  saveUser({required User user}) {
    _database.saveUser(user: user);
  }

  saveUserFromJson({required Map<String, dynamic> json}) {
    saveUser(user: User.fromJson(json));
  }

  User getLatestUser() {
    return _database.getLatestUser();
  }

  User? findUserById({required String id}) {
    return _database.findUserById(id: id);
  }
}
