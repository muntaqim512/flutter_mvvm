class ExceptionHandle implements Exception {
  final _message;
  final _preifx;

  ExceptionHandle([this._message, this._preifx]);

  String toSring() {
    return '$_message$_preifx';
  }
}

class InternetException extends ExceptionHandle {
  InternetException([String? message]) : super(message, 'No Internet');
}

class SeverException extends ExceptionHandle {
  SeverException([String? message]) : super(message, 'Time Out Exception');
}
