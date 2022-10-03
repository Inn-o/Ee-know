import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  TextOverflow overFlow;

  SmallText(
      {super.key,
      this.color = const Color(0xFFccc7c5),
      required this.text,
      this.size = 11,
      this.height = 1.2,
      this.overFlow = TextOverflow.clip});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
          color: color,
          fontFamily: 'Poppins',
          fontSize: size,
          height: height,
          fontWeight: FontWeight.w500),
    );
  }
}
