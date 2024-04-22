class ErrorsModel {
  final List<String> imageErrors;

  ErrorsModel({required this.imageErrors});

  factory ErrorsModel.fromJson(Map<String, dynamic> json) {
    return ErrorsModel(imageErrors: List<String>.from(json['img']));
  }
}
