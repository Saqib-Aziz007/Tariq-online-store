
import 'package:flutter_getx_mvvm_template/services/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse({this.message, this.data, this.status});

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed(this.data) : status = Status.COMPLETED;
  ApiResponse.error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return "Status: $status \n Message: $message \n Data: $data";
  }
}
