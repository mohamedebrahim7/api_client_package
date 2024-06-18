class UserTypesResponse {
  UserTypesResponse({
      this.code, 
      this.message, 
      this.status, 
      this.userTypeOptions,});

  UserTypesResponse.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    status = json['status'];
    if (json['data'] != null) {
      userTypeOptions = [];
      json['data'].forEach((v) {
        userTypeOptions?.add(UserType.fromJson(v));
      });
    }
  }

  @override
  String toString() {
    return 'UserTypesResponse{code: $code, message: $message, status: $status, userTypeOptions: $userTypeOptions}';
  }

  int? code;
  String? message;
  bool? status;
  List<UserType>? userTypeOptions;

}

class UserType {
  UserType({
      this.id, 
      this.value,});

  UserType.fromJson(dynamic json) {
    id = json['id'];
    value = json['value'];
  }

  @override
  String toString() {
    return 'UserType{id: $id, value: $value}';
  }

  int? id;
  String? value;
}