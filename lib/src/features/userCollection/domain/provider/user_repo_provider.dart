import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_connect/src/features/userCollection/data/datasource/user_collection_datasource.dart';
import 'package:news_connect/src/features/userCollection/data/repository/user_collection_repo_impl.dart';
import 'package:news_connect/src/features/userCollection/domain/repository/user_collection_repository.dart';

final userRepoProvider = Provider<UserCollectionRepository>((ref) {
  final UserCollectionDatasource userCollectionDatasource =
      UserCollectionDatasource();
  return UserCollectionRepoImpl(
      userCollectionDatasource: userCollectionDatasource);
});
