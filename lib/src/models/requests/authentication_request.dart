class AuthenticationRequest {
  AuthenticationRequest({
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.countryCode,
    this.email,
    this.password,
    this.passwordConfirmation,
    this.androidMDeviceId,
    this.fid4,
    this.joinCode,
    this.code,});

  @override
  String toString() {
    return 'AuthenticationRequest{firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, countryCode: $countryCode, email: $email, password: $password, passwordConfirmation: $passwordConfirmation, androidMDeviceId: $androidMDeviceId, fid4: $fid4, joinCode: $joinCode, code: $code}';
  }

  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? countryCode;
  String? email;
  String? password;
  String? passwordConfirmation;
  String? androidMDeviceId;
  String? fid4;
  String? joinCode;
  int? code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['phone_number'] = phoneNumber;
    map['country_code'] = countryCode;
    map['email'] = email;
    map['password'] = password;
    map['password_confirmation'] = passwordConfirmation;
    map['android_m_device_id'] = androidMDeviceId;
    map['fid_4'] = fid4;
    map['join_code'] = joinCode;
    map['code'] = code;
    return map;
  }

  AuthenticationRequest copyWith({  String? firstName,
    String? lastName,
    String? phoneNumber,
    String? countryCode,
    String? email,
    String? password,
    String? passwordConfirmation,
    String? androidMDeviceId,
    String? fid4,
    String? joinCode,
    int? code,
  }) => AuthenticationRequest(  firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    countryCode: countryCode ?? this.countryCode,
    email: email ?? this.email,
    password: password ?? this.password,
    passwordConfirmation: passwordConfirmation ?? this.passwordConfirmation,
    androidMDeviceId: androidMDeviceId ?? this.androidMDeviceId,
    fid4: fid4 ?? this.fid4,
    joinCode: joinCode ?? this.joinCode,
    code: code ?? this.code,
  );

}