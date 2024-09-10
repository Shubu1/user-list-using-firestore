import 'package:news_connect/src/features/userCollection/data/datasource/user_collection_datasource.dart';
import 'package:news_connect/src/features/userCollection/domain/model/user_collection_model.dart';
import 'package:news_connect/src/features/userCollection/domain/repository/user_collection_repository.dart';

class UserCollectionRepoImpl implements UserCollectionRepository {
  final UserCollectionDatasource userCollectionDatasource;

  UserCollectionRepoImpl({required this.userCollectionDatasource});
  @override
  Stream<List<UserCollectionModel>> getUserData() {
    final userData = userCollectionDatasource.getUserData();
    return userData;
  }
}
