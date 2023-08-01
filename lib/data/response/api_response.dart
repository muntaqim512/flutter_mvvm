import 'package:getx_mvvm/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);
  ApiResponse.Loading() : status = Status.LOADING;
  ApiResponse.Completed(this.data) : status = Status.COMPLETED;
  ApiResponse.Error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return 'Status:$status \n Message : $message \n Data : $data';
  }
}
