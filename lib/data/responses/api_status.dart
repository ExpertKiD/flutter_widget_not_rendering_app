// ignore_for_file: public_member_api_docs, sort_constructors_first
class Success {
  bool success;
  Object data;
  String? message;

  Success({
    this.success = true,
    required this.data,
     this.message,
  });
  
}

class Failure {
  bool success;
  Object? data;
  String message;


  Failure({
    this.success = false,
    this.data,
    required this.message,
  });
  
}
