import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String get md => DateFormat('MM/dd').format(this);

  String get yMd => DateFormat('yyyy/MM/dd').format(this);

  String get hm => DateFormat('HH:mm').format(this);

  String get yMdHm => DateFormat('yyyy/MM/dd HH:mm').format(this);
}
