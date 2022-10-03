import 'package:bingwa_clone/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  final Color color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigText(
      {super.key,
      this.color = const Color.fromARGB(255, 95, 94, 94),
      required this.text,
      this.size = 0,
      this.overFlow = TextOverflow.clip});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        fontFamily: 'Poppins',
        fontSize: size == 0 ? Dimensions.font20 : size,
      ),
    );
  }
}
