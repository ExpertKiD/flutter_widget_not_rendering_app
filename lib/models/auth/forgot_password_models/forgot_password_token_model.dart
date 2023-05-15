// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ForgotPasswordTokenModel {
  final String token;
  final String? email;
  ForgotPasswordTokenModel({
    required this.token,
    this.email,
  });

  ForgotPasswordTokenModel copyWith({
    String? token,
    String? email,
  }) {
    return ForgotPasswordTokenModel(
      token: token ?? this.token,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'email': email,
    };
  }

  factory ForgotPasswordTokenModel.fromMap(Map<String, dynamic> map) {
    return ForgotPasswordTokenModel(
      token: map['token'] as String,
      email: map['email'] != null ? map['email'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ForgotPasswordTokenModel.fromJson(String source) => ForgotPasswordTokenModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ForgotPasswordTokenModel(token: $token, email: $email)';

  @override
  bool operator ==(covariant ForgotPasswordTokenModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.token == token &&
      other.email == email;
  }

  @override
  int get hashCode => token.hashCode ^ email.hashCode;
}
