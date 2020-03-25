import 'package:logger/logger.dart';

Logger getLogger(String className) {
  return Logger(printer: SimpleLogPrinter(className));
}

class SimpleLogPrinter extends LogPrinter {
  final String className;

  SimpleLogPrinter(this.className);

  @override
  void log(Level level, dynamic message, dynamic error, StackTrace stackTrace) {
    var color = PrettyPrinter.levelColors[level];
    var emoji = PrettyPrinter.levelEmojis[level];
    println(color('$emoji $className - $message'));
  }
}
