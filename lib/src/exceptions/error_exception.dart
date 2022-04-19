class ErrorException implements Exception {
  late String error;
  ErrorException(String err) {
    error = err;
  }
  @override
  String toString() {
    return error;
  }
}
