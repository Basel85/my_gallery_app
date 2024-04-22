class UploadImageBody {
  final String image;

  UploadImageBody({required this.image});

  Future<Map<String, dynamic>> toJson() async{
    return {
      'img': image,
    };
  }
}
