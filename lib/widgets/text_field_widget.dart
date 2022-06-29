import 'package:flutter/material.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
  String? label_text;
  double? label_size;
  FontWeight? fontWeight;
  Color? color_font;
  TextInputType? textInputType;
  TextAlign textAlign;
  double? hint_size;
  double width_enable_border;
  double width_foucse_border;
  Color color_enabled;
  Color color_focus;

  TextFieldWidget(
      {this.color_enabled=AppColors.BASIC_BROWN_COLOR , this.color_focus=AppColors.BASIC_BROWN_COLOR ,this.width_enable_border = 1 ,this.width_foucse_border = 1,  this.label_text, this.label_size, this.fontWeight, this.color_font,this.textInputType , this.textAlign=TextAlign.start,this.hint_size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: TextField(

        textAlign: textAlign ,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: label_text,
          hintStyle: TextStyle(
            fontFamily: 'POP',
            fontSize: hint_size,
            fontWeight: fontWeight,
            color: color_font,
          ),
          labelStyle: TextStyle(
            fontFamily: 'POP',
            fontSize: label_size,
            fontWeight: fontWeight,
            color: color_font,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                width: width_enable_border,
                color: color_enabled,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                width: width_foucse_border,
                color: color_focus,
              )
          ),
        ),
      ),
    );
  }
}