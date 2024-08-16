import 'data.dart';

class ProductsModel {
  bool? status;
  dynamic message;
  Data? data;

  ProductsModel({this.status, this.message, this.data});

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
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
