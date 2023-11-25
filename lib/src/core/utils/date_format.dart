import 'package:intl/intl.dart';

extension TimeFormatFromEpoch on DateTime? {
  String get toHour {
    return DateFormat('Hm').format(this ?? DateTime.now());
  }
}
