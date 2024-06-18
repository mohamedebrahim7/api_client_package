class UpdateProfileResponse {
  UpdateProfileResponse({
      this.code, 
      this.message, 
      this.status, 
      });

  UpdateProfileResponse.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    status = json['status'];
  }
  int? code;
  String? message;
  bool? status;

  @override
  String toString() {
    return 'UpdateProfileResponse{code: $code, message: $message, status: $status}';
  }
}