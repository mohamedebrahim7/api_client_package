class AuthenticationResponse {
  AuthenticationResponse({
      this.code, 
      this.message, 
      this.status, 
      this.user,});

  AuthenticationResponse.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    status = json['status'];

    if(json['data'].runtimeType == String) {
      failureMessage = json['data'];
    }
    else{
      user = json['data'].isNotEmpty  ? User.fromJson(json['data']) : null;
    }
  }


  @override
  String toString() {
    return 'AuthenticationResponse{code: $code, message: $message, status: $status, failureMessage: $failureMessage}, data: $user,';
  }

  int? code;
  String? message;
  bool? status;
  User? user;
  String? failureMessage;


}

class User {
  User({
    this.id,
    this.name,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.countryCode,
    this.email,
    this.gender,
    this.src,
    this.birthData,
    this.ipAddress,
    this.avatar,
    this.cover,
    this.token,});

  User.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    phoneNumber = json['phone_number'];
    countryCode = json['country_code'];
    email = json['email'];
    gender = json['gender'];
    src = json['src'];
    birthData = json['birth_data'];
    ipAddress = json['ip_address'];
    avatar = json['avatar'];
    cover = json['cover'];
    token = json['token'];
  }
  int? id;
  String? name;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? countryCode;
  String? email;
  dynamic gender;
  dynamic src;
  dynamic birthData;
  String? ipAddress;
  String? avatar;
  String? cover;
  String? token;

  @override
  String toString() {
    return 'Data{id: $id, name: $name, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, countryCode: $countryCode, email: $email, gender: $gender, src: $src, birthData: $birthData, ipAddress: $ipAddress, avatar: $avatar, cover: $cover, token: $token}';
  }



}