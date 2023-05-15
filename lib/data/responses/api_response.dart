// ignore_for_file: public_member_api_docs, sort_constructors_first
import '/data/responses/enum_status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse({
    this.status,
    this.data,
    this.message,
  });

  ApiResponse.loading() : status = Status.LAODING;
  ApiResponse.completed(this.data) : status = Status.COMPLETED;
  ApiResponse.error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return 'Status: $status \n Message: $message \n Data: $data';
  }
}
