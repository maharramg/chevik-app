import 'dart:developer' as logger;

class Debugger {
  Debugger._();

  static void printRequest(String endpoint, {dynamic body, dynamic, headers}) {
    print('--> ENDPOINT: $endpoint');
    if (body != null) print('--> BODY: $body');
    if (headers != null) print('--> HEADERS: $headers');
  }

  static void printResponse(int statusCode, data) {
    print('--> STATUS CODE: $statusCode');
    print('--> DATA: $data');
  }

  static void log(String message) {
    logger.log(message);
  }
}
