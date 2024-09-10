import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_connect/src/features/userCollection/domain/model/user_collection_model.dart';
import 'package:news_connect/src/features/userCollection/domain/provider/user_repo_provider.dart';

final userDataProvider =
    StreamProvider.autoDispose<List<UserCollectionModel>>((ref) {
  final userRepository = ref.watch(userRepoProvider);
  return userRepository.getUserData();
});
