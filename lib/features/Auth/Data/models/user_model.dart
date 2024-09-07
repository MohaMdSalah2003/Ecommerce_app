class UserModel {
  final String name;
  final String address;
  final String email;
  final String? iamgeUrl;

  UserModel({
    required this.name,
    required this.address,
    required this.email,
    this.iamgeUrl =
        'https://img.freepik.com/premium-vector/user-profile-icon-flat-style-member-avatar-vector-illustration-isolated-background-human-permission-sign-business-concept_157943-15752.jpg',
  });
  factory UserModel.fromJson(json) {
    return UserModel(
      name: json['name'],
      address: json['address'],
      email: json['email'],
      iamgeUrl: json['iamgeUrl'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'adress': address,
        'email': email,
        'iamgeUrl': iamgeUrl,
      };
}
