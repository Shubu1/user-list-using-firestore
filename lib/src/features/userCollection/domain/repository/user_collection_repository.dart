import 'package:news_connect/src/features/userCollection/domain/model/user_collection_model.dart';

abstract class UserCollectionRepository {
  Stream<List<UserCollectionModel>> getUserData();
}
