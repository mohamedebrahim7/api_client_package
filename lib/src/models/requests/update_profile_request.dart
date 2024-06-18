class UpdateProfileRequest {
  UpdateProfileRequest({
      this.firstName, 
      this.lastName, 
      this.email, 
      this.phoneNumber, 
      this.countryCode, 
      this.birthDate, 
      this.gender,});

  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;
  String? countryCode;
  String? birthDate;
  String? gender;

  @override
  String toString() {
    return 'UpdateProfileRequest{firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, countryCode: $countryCode, birthDate: $birthDate, gender: $gender}';
  }

  UpdateProfileRequest copyWith({  String? firstName,
  String? lastName,
  String? email,
  String? phoneNumber,
  String? countryCode,
  String? birthDate,
  String? gender,
}) => UpdateProfileRequest(  firstName: firstName ?? this.firstName,
  lastName: lastName ?? this.lastName,
  email: email ?? this.email,
  phoneNumber: phoneNumber ?? this.phoneNumber,
  countryCode: countryCode ?? this.countryCode,
  birthDate: birthDate ?? this.birthDate,
  gender: gender ?? this.gender,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['email'] = email;
    map['phone_number'] = phoneNumber;
    map['country_code'] = countryCode;
    map['birth_data'] = birthDate;
    map['gender'] = gender;
    return map;
  }

}