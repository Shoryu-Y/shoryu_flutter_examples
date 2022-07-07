import 'package:flutter/cupertino.dart';

class ItemPicker extends StatelessWidget {
  const ItemPicker({
    super.key,
    required this.children,
    required this.onSelectedItemChanged,
  });

  final List<Widget> children;
  final ValueChanged<int> onSelectedItemChanged;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        height: 250,
        color: CupertinoColors.systemBackground,
        child: CupertinoPicker(
          itemExtent: 40,
          onSelectedItemChanged: onSelectedItemChanged,
          children: children.map((child) => Center(child: child)).toList(),
        ),
      ),
    );
  }
}
