import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddToWishlistButton extends StatelessWidget {
  const AddToWishlistButton({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(
        CupertinoIcons.heart,
        color: Colors.white,
        size: 32,
      ),
    );
  }
}
