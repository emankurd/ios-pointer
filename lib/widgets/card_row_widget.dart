import 'package:flutter/material.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/text_field_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardRowWidget extends StatelessWidget {
  String? text_field;
  String? text_hint;
  Color? color_field;
  Color? hint_color;



  CardRowWidget({this.hint_color=Colors.white,this.text_field, this.text_hint , this.color_field=AppColors.BASIC_BROWN_COLOR});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent ,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
          side: BorderSide(
              color: AppColors.BASIC_BROWN_COLOR,
              width: 1.w
          )
      ),
      child: Row(
        children: [
          Expanded(child: TextFieldWidget(color_enabled: Colors.transparent , color_focus:Colors.transparent , label_text: text_field, width_enable_border: 0, width_foucse_border: 0,color_font:color_field ,hint_size: 16.sp,label_size:16.sp ,)),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 30),
            child: Text_widget( text: text_hint, text_size: 14.sp , text_color: hint_color,),
          )
        ],
      ),
    );
  }
}