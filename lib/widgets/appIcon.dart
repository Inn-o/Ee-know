import 'package:flutter/cupertino.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color bgColor;
  final Color iconColor;
  final double size;
  final double iconSize;
  const AppIcon(
      {super.key,
      this.bgColor = const Color(0xFFfcf4e4),
      required this.icon,
      this.iconColor = const Color(0xFF756d54),
      this.size = 40,
      this.iconSize = 15});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size / 1.2,
      height: size / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 4),
        color: bgColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
