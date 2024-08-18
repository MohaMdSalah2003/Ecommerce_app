class AllCategoriesModel {
  int? id;
  String? name;
  String? image;

  AllCategoriesModel({this.id, this.name, this.image});

  factory AllCategoriesModel.fromJson(Map<String, dynamic> json) {
    return AllCategoriesModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
      };
}
