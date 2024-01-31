import 'package:flutter/material.dart';

class TextBtnWidget extends StatelessWidget {
  const TextBtnWidget({
    Key? key,
    required this.onPressed,
    required this.label,
    this.alignment = Alignment.bottomRight,
    this.bgColor = const Color(0xFF61EBA9),
    this.fgColor = const Color(0xFF101213),
  }) : super(key: key);

  final VoidCallback onPressed;
  final String label;
  final Alignment? alignment;
  final Color bgColor;
  final Color fgColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment!,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(fgColor),
          backgroundColor: MaterialStateProperty.all<Color>(bgColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  5.0), // Change the border radius value here
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}
