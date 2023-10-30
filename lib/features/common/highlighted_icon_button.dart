import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HighlightedIconButton extends StatelessWidget {
  const HighlightedIconButton({
    Key? key,
    this.onPressed,
    required this.icon,
    this.color,
    this.tooltip,
    this.size,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Icon icon;
  final String? tooltip;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white.withOpacity(.2),
      child: IconButton(
        onPressed: onPressed,
        splashRadius: 40,
        icon: IconTheme(
          data: IconThemeData(
            color: color ?? Colors.white,
            size: size,
          ),
          child: icon,
        ),
        iconSize: size,
        tooltip: tooltip,
      ),
    );
  }
}
