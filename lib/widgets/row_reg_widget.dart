import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Row_widget extends StatelessWidget {
  String? image_path;
  Row_widget({this.image_path});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40.h,
        decoration:BoxDecoration(
            color: AppColors.GrAY_Light_Back_COLOR,
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                  color: AppColors.BASIC_BROWN_COLOR,
                  spreadRadius: 0.5
              )
            ]
        ),
        child: Row(
          children: [
            Expanded(child: Text_widget(textAlign: TextAlign.center, text: getTranslated(context, 'prof_sec2_text9')!, text_size: 10.sp, text_color: Colors.black,))
            , Padding(
              padding: const EdgeInsetsDirectional.only(end: 10),
              child: Image.asset(image_path!, height: 15.h, width: 15.w,),
            )
          ],
        ),
      ),
    );
  }
}