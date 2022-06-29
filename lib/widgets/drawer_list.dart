import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class drawerlistTile extends StatelessWidget {
  final String title;
   Icon? icon;
  final Function()? ontap;
   Widget? widget;

  drawerlistTile(
      {required this.title, required this.ontap,  this.icon , this.widget});

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
           horizontalTitleGap: 0,
          leading: (icon != null ) ? icon : widget,
          onTap: ontap,

          title: Text_widget(
            textAlign: TextAlign.start,
            text_size: 15.sp,
            text_color: AppColors.GrAY_DRAWER_COLOR,
            text: title,
          ),
        ),
      ],
    );
  }
}
