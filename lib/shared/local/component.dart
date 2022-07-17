import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidgets{
  static Widget myButton({
    required Color color,
    required double radius,
    required double width,
    required double height,
    required void Function()? onTap,
    Icon? icon,
    Text? text,
  })=>GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      width:width ,
      height: height,
      child:Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
           icon ?? const SizedBox(),
           text ?? const SizedBox(),

        ],
      ),
    ),
  );
}