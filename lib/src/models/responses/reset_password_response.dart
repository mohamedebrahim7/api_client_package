class ResetPasswordResponse {
  ResetPasswordResponse({
      this.code, 
      this.message, 
      this.status, 
      this.data,});

  ResetPasswordResponse.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    status = json['status'];
    if(json["data"]!=null && json["data"].isNotEmpty){
      data = [];
      json['data'].forEach((v) {
        data?.add(v);
      });
    }
  }

  @override
  String toString() {
    return 'ResetPasswordResponse{code: $code, message: $message, status: $status, data: $data}';
  }

  int? code;
  String? message;
  bool? status;
  List<dynamic>? data;
ResetPasswordResponse copyWith({  int? code,
  String? message,
  bool? status,
  List<dynamic>? data,
}) => ResetPasswordResponse(  code: code ?? this.code,
  message: message ?? this.message,
  status: status ?? this.status,
  data: data ?? this.data,
);


}