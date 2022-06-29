import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'elevated_button_widget.dart';

class ColumnPreviewWidget extends StatelessWidget {
  String? image_path;
  ColumnPreviewWidget({this.image_path});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100.h,
        width: 110.w,
        decoration:BoxDecoration(
            color: AppColors.GrAY_Light_Back_COLOR,
            borderRadius: BorderRadius.circular(35.r),
            boxShadow: [
              BoxShadow(
                  color: AppColors.BASIC_BROWN_COLOR,
                  spreadRadius: 0.5
              )
            ]
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(image_path!,height: 50.h,width: 40.w,fit: BoxFit.fill,),
            SizedBox(
              height: 20.h,
              width: 70.w,
              child: AppWidgetElevatedButton(height_size: 25.h,width_size: 40.w,  text: getTranslated(context, 'prof_sec8_text6')!, onpressed: (){},
                background_color: Colors.white,
                color_text: Colors.black,border_size: 15.r,fontSize: 12.sp,
                side_color: Colors.black,
              ),
            ),
            SizedBox(height: 4.h,),
            Text_widget(textAlign: TextAlign.center, text:'BTN-47', text_size: 12.sp, text_color: Colors.black,)

          ],
        ),
      ),
    );
  }
}