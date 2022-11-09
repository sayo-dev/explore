import 'package:flutter/material.dart';

import '../size_config.dart';

class kText extends StatelessWidget {
  final String text;
  final double size;
  final String family;
  final Color? color;
  final FontWeight? fontWeight;
  kText({required this.text, required this.size, required this.family, this.color, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Text(
      text,
      style: TextStyle(
          fontSize: getProportionateScreenWidth(size),
          fontFamily: family,
          color: color,
        fontWeight: fontWeight
      ),
    );
  }
}