class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix - $_message';
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, 'No internet');
}

class RequestTimeoutException extends AppExceptions {
  RequestTimeoutException([String? message])
      : super(message, 'Request timeout');
}

class ServerException extends AppExceptions {
  ServerException([String? message]) : super(message, 'Internal server error');
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super(message, 'Error while communicating with server');
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message])
      : super(message, 'Bad request');
}
