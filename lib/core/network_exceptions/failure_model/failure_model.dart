import 'package:my_gallery_app/core/network_exceptions/failure_model/errors_model.dart/errors_model.dart';

class FailureModel {
  String message;
  ErrorsModel? errors;

  FailureModel({this.errors, required this.message});
  factory FailureModel.fromJson(Map<String, dynamic> json) {
    return FailureModel(
        message: json['message'],
        errors: json['errors'] != null
            ? ErrorsModel.fromJson(json['errors'])
            : null);
  }
}
