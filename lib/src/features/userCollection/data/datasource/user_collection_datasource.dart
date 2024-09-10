import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:news_connect/src/features/userCollection/domain/model/user_collection_model.dart';

class UserCollectionDatasource {
  Stream<List<UserCollectionModel>> getUserData() {
    final db = FirebaseFirestore.instance;

    try {
      return db.collection('userCollectionList').snapshots().map((snapshot) {
        return snapshot.docs
            .map((doc) => UserCollectionModel.fromJson(doc.data()))
            .toList();
      });
    } on FirebaseException catch (e) {
      throw Exception(e.message);
    }
  }
}
