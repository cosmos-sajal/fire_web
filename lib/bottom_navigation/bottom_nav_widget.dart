import 'package:flutter/material.dart';
import 'package:fire_web/text_btn/text_btn_widget.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
    required this.isPrevRequired,
    required this.isNextRequired,
    required this.onNextPressed,
    this.prevLabel = "Prev",
    this.nextLabel = "Next",
  }) : super(key: key);

  final bool isPrevRequired;
  final bool isNextRequired;
  final VoidCallback onNextPressed;
  final String prevLabel;
  final String nextLabel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (isPrevRequired)
                    TextBtnWidget(
                      onPressed: () {
                        // Navigate to the second screen using a named route.
                        Navigator.pop(context);
                      },
                      label: prevLabel,
                      alignment: Alignment.bottomLeft,
                      bgColor: Colors.transparent,
                      fgColor: Theme.of(context).colorScheme.primary,
                    ),
                  const SizedBox(width: 8),
                  TextBtnWidget(
                    onPressed: () {
                      onNextPressed();
                    },
                    label: nextLabel,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
