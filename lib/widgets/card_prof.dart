import 'package:flutter/material.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/widgets/text_widget.dart';

class CardProf extends StatelessWidget {
  String? text;
  Color textColor;
  Color borderColor;
  CardProf({this.text , this.textColor = AppColors.GrAY_DRAWER_COLOR , this.borderColor=AppColors.GrAY_DRAWER_COLOR});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: AppColors.GrAY_Light_Back_COLOR,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
            side: BorderSide(
                width: 1,
                color: borderColor
            )
        ),
        child: Align(
            alignment: AlignmentDirectional.center,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Text_widget(text: text,text_size: 10.sp,text_color: textColor,),
            ))
    );
  }
}