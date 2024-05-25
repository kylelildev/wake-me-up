import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomTabButton extends StatelessWidget {
  const BottomTabButton(
      {super.key,
      required this.onPressed,
      required this.iconSvgSource,
      required this.isActive});

  final Function()? onPressed;
  final String iconSvgSource;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: onPressed,
      minWidth: 65,
      child: SvgPicture.asset(
        iconSvgSource,
        colorFilter: isActive
            ? ColorFilter.mode(Theme.of(context).primaryColor, BlendMode.srcIn)
            : const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
      ),
    );
  }
}
