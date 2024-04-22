abstract class UploadImageState {}
class UploadImageInitial extends UploadImageState {}
class UploadImageLoading extends UploadImageState {}
class UploadImageSuccess extends UploadImageState {
  final String message;
  UploadImageSuccess({required this.message});
}
class UploadImageFailure extends UploadImageState {
  final String message;
  UploadImageFailure({required this.message});
}
