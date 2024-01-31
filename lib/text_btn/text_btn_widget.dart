import 'package:flutter/material.dart';

class TextBtnWidget extends StatelessWidget {
  const TextBtnWidget({
    Key? key,
    required this.onPressed,
    required this.label,
    this.alignment = Alignment.bottomRight,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String label;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment!,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}
