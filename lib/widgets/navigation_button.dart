import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    this.onPressed,
    this.isNext = true,
  });
  final void Function()? onPressed;
  final bool isNext;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isNext
          ? const EdgeInsets.only(right: 8)
          : const EdgeInsets.only(left: 8),
      // padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.8),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          isNext ? CupertinoIcons.chevron_right : CupertinoIcons.chevron_left,
          color: Colors.black,
          size: 14,
        ),
      ),
    );
  }
}
