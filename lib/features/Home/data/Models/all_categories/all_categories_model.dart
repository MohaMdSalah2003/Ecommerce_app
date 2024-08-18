import 'data.dart';

class AllCategoriesModel {
  bool? status;
  dynamic message;
  Data? data;

  AllCategoriesModel({this.status, this.message, this.data});

  factory AllCategoriesModel.fromJson(Map<String, dynamic> json) =>
      AllCategoriesModel(
        status: json['status'] as bool?,
        message: json['message'] as dynamic,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };
}
