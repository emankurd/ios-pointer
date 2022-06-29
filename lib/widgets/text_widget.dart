import 'package:flutter/material.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
class Text_widget extends StatelessWidget {
  String? text;

  double? text_size;
  Color? text_color;
  FontWeight? fontWeight;
  TextAlign textAlign;

  Text_widget({
   required this.text,
    this.text_color=AppColors.BASIC_BROWN_COLOR,
    required this.text_size,
     this.fontWeight,
    this.textAlign=TextAlign.center,

});

  @override
  Widget build(BuildContext context) {
    return Text(

      text!,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'POP',
        fontSize: text_size,
        color:text_color,
        fontWeight: fontWeight,
      ),
    );
  }
}