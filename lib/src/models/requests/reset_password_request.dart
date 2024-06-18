class ResetPasswordRequest {
  ResetPasswordRequest({
      this.phoneNumber, 
      this.code, 
      this.password, 
      this.passwordConfirmation, 
      this.countryCode,});

  String? phoneNumber;
  String? code;
  String? password;
  String? passwordConfirmation;
  String? countryCode;

  @override
  String toString() {
    return 'ResetPasswordRequest{phoneNumber: $phoneNumber, code: $code, password: $password, passwordConfirmation: $passwordConfirmation, countryCode: $countryCode}';
  }

  ResetPasswordRequest copyWith({  String? phoneNumber,
  String? code,
  String? password,
  String? passwordConfirmation,
  String? countryCode,

}) => ResetPasswordRequest(  phoneNumber: phoneNumber ?? this.phoneNumber,
  code: code ?? this.code,
  password: password ?? this.password,
  passwordConfirmation: passwordConfirmation ?? this.passwordConfirmation,
  countryCode: countryCode ?? this.countryCode,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['phone_number'] = phoneNumber;
    map['code'] = code;
    map['password'] = password;
    map['password_confirmation'] = passwordConfirmation;
    map['country_code'] = countryCode;
    return map;
  }

}