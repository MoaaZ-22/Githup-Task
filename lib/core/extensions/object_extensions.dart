import 'package:logger/logger.dart';

/// Extensions for Object
extension ObjectExtension on Object? {
  void get log {
    final logger = Logger();

    if (this == null ||
        toString().contains('error') ||
        toString().contains('exception') ||
        toString().contains('Failure') ||
        toString().contains('Exception') ||
        toString().contains('wrong')) {
      logger.e(this);
    } else if (toString().contains('debug')) {
      logger.d(this);
    } else if (toString().contains('warning')) {
      logger.w(this);
    } else {
      logger.i(this);
    }
  }
}
