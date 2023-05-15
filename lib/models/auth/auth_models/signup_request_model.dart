// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SignUpRequestModel {
  final String email;
  final String password;
  final String phone;
  final String firstName;
  final String lastName;
  final String companyName;
  final String vatRegistration;
  final String companyRegistration;
  SignUpRequestModel({
    required this.email,
    required this.password,
    required this.phone,
    required this.firstName,
    required this.lastName,
    required this.companyName,
    required this.vatRegistration,
    required this.companyRegistration,
  });

  SignUpRequestModel copyWith({
    String? email,
    String? password,
    String? phone,
    String? firstName,
    String? lastName,
    String? companyName,
    String? vatRegistration,
    String? companyRegistration,
  }) {
    return SignUpRequestModel(
      email: email ?? this.email,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      companyName: companyName ?? this.companyName,
      vatRegistration: vatRegistration ?? this.vatRegistration,
      companyRegistration: companyRegistration ?? this.companyRegistration,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
      'phone': phone,
      'firstName': firstName,
      'lastName': lastName,
      'companyName': companyName,
      'vatRegistration': vatRegistration,
      'companyRegistration': companyRegistration,
    };
  }

  factory SignUpRequestModel.fromMap(Map<String, dynamic> map) {
    return SignUpRequestModel(
      email: map['email'] as String,
      password: map['password'] as String,
      phone: map['phone'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      companyName: map['companyName'] as String,
      vatRegistration: map['vatRegistration'] as String,
      companyRegistration: map['companyRegistration'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignUpRequestModel.fromJson(String source) => SignUpRequestModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SignUpModel(email: $email, password: $password, phone: $phone, firstName: $firstName, lastName: $lastName, companyName: $companyName, vatRegistration: $vatRegistration, companyRegistration: $companyRegistration)';
  }

  @override
  bool operator ==(covariant SignUpRequestModel other) {
    if (identical(this, other)) return true;

    return
      other.email == email &&
      other.password == password &&
      other.phone == phone &&
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.companyName == companyName &&
      other.vatRegistration == vatRegistration &&
      other.companyRegistration == companyRegistration;
  }

  @override
  int get hashCode {
    return email.hashCode ^
      password.hashCode ^
      phone.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      companyName.hashCode ^
      vatRegistration.hashCode ^
      companyRegistration.hashCode;
  }
}

// class SignUpRequestModel {
//   late String email;
//   late String password;
//   late String phone;
//   late String firstName;
//   late String lastName;
//   late String? companyName;
//   late String? vatRegistration;
//   late String? companyRegistration;

//   SignUpRequestModel({
//     required this.email,
//     required this.password,
//     required this.phone,
//     required this.firstName,
//     required this.lastName,
//     this.companyName,
//     this.companyRegistration,
//     this.vatRegistration,
//   });

//   SignUpRequestModel.fromJson(Map<String, dynamic> json){
//     email = json['email'] as String;
//     password = json['password'] as String;
//     phone = json['phone'] as String;
//     firstName = json['firstName'] as String;
//     lastName = json['lastName'] as String;
//     companyName = json['companyName'] as String;
//     companyRegistration = json['companyRegistration'] as String;
//     vatRegistration = json['vatRegistration'] as String;
    
//   }

//   Map<String, dynamic> toJson(){
//     final map = <String, dynamic>{};
//     map['email'] = email;
//     map['password'] = password;
//     map['phone'] = phone;
//     map['firstName'] = firstName;
//     map['lastName'] = lastName;
//     map['companyName'] = companyName;
//     map['companyRegistration'] = companyRegistration;
//     map['vatRegistration'] = vatRegistration;
//       return map;
    
//   }

  

// }
