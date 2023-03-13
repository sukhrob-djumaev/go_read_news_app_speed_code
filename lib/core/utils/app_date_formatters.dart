import 'package:intl/intl.dart';

class AppDateFormatters {
  static String mdY(DateTime dt) => DateFormat('MMM d,yyyy').format(dt);
}
