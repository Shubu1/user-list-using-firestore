class UserCollectionModel {
  String? name;

  UserCollectionModel({required this.name});

  factory UserCollectionModel.fromJson(Map<String, dynamic>? json) {
    return UserCollectionModel(name: json?["name"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data["name"] = name;

    return data;
  }
}
