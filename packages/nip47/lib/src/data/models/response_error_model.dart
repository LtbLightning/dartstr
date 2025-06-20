import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/response_error_model.freezed.dart';

@freezed
sealed class ResponseErrorModel with _$ResponseErrorModel {
  const factory ResponseErrorModel({
    required String code,
    required String message,
  }) = _ResponseErrorModel;
  const ResponseErrorModel._();

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message,
    };
  }

  factory ResponseErrorModel.fromJson(Map<String, dynamic> json) {
    return ResponseErrorModel(
      code: json['code'] as String,
      message: json['message'] as String,
    );
  }
}
