import 'package:flutter/cupertino.dart';

class DateTimePicker extends StatelessWidget {
  const DateTimePicker({
    super.key,
    required this.initialDateTime,
    required this.mode,
    required this.onDateTimeChanged,
  });

  final DateTime initialDateTime;
  final CupertinoDatePickerMode mode;
  final ValueChanged<DateTime> onDateTimeChanged;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        height: 250,
        color: CupertinoColors.systemBackground,
        child: CupertinoDatePicker(
          initialDateTime: initialDateTime,
          mode: mode,
          use24hFormat: true,
          onDateTimeChanged: onDateTimeChanged,
        ),
      ),
    );
  }
}
