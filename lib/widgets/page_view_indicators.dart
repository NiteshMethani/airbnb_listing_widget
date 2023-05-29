import 'package:flutter/material.dart';

class PageViewIndicators extends StatelessWidget {
  const PageViewIndicators({
    super.key,
    required this.numPages,
    required this.activePage,
    this.onTap,
    this.activeIndicatorColor = Colors.white,
    this.inactiveIndicatorColor = Colors.white54,
  });
  final int numPages;
  final int activePage;
  final void Function(int)? onTap;

  final Color activeIndicatorColor;
  final Color inactiveIndicatorColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(
        numPages,
        (index) => SinglePageIndicator(
          onTap: () => onTap!(index),
          radius: activePage == index ? 4 : 3,
          backgroundColor: activePage == index
              ? activeIndicatorColor
              : inactiveIndicatorColor,
        ),
      ),
    );
  }
}

class SinglePageIndicator extends StatelessWidget {
  const SinglePageIndicator({
    super.key,
    this.onTap,
    this.backgroundColor = Colors.grey,
    this.radius = 4,
  });
  final void Function()? onTap;
  final Color backgroundColor;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: InkWell(
        onTap: onTap,
        child: CircleAvatar(
          radius: radius,
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}
