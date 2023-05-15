// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ForgotPasswordOtpValidationModel {
  final String? hash;
  final String? email;
  final String? otp;
  ForgotPasswordOtpValidationModel({
     this.hash,
     this.email,
     this.otp,
  });
  

  ForgotPasswordOtpValidationModel copyWith({
    String? hash,
    String? email,
    String? otp,
  }) {
    return ForgotPasswordOtpValidationModel(
      hash: hash ?? this.hash,
      email: email ?? this.email,
      otp: otp ?? this.otp,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash': hash,
      'email': email,
      'otp': otp,
    };
  }

  factory ForgotPasswordOtpValidationModel.fromMap(Map<String, dynamic> map) {
    return ForgotPasswordOtpValidationModel(
      hash: map['hash'] as String,
      email: map['email'] as String,
      otp: map['otp'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ForgotPasswordOtpValidationModel.fromJson(String source) => ForgotPasswordOtpValidationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ForgotPasswordOtpValidationModel(hash: $hash, email: $email, otp: $otp)';

  @override
  bool operator ==(covariant ForgotPasswordOtpValidationModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.hash == hash &&
      other.email == email &&
      other.otp == otp;
  }

  @override
  int get hashCode => hash.hashCode ^ email.hashCode ^ otp.hashCode;
}
