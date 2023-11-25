extension TimeFormatFromEpoch on int? {
  String get dateFromEpoch {
    final int hour = DateTime.fromMicrosecondsSinceEpoch(this ?? 0 * 1000).hour;
    final int minute = DateTime.fromMicrosecondsSinceEpoch(this ?? 0 * 1000).minute;

    return '$hour:$minute';
  }
}
