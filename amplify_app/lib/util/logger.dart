import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:simple_logger/simple_logger.dart';

final logger = SimpleLogger()
  ..setLevel(
    Level.ALL,
    includeCallerInfo: true,
  );

class Logger {
  const Logger();

  static void showAmplifyException(AmplifyException error) {
    logger.warning(
      '''message: ${error.message}
    recoverySuggestion: ${error.recoverySuggestion}
    recoverySuggestion: ${error.recoverySuggestion}''',
    );
  }
}
