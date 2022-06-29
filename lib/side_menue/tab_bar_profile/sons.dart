import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_field_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'father.dart';

class SonsProfileScreen extends StatefulWidget {
  const SonsProfileScreen({Key? key}) : super(key: key);

  @override
  _SonsProfileScreenState createState() => _SonsProfileScreenState();
}

class _SonsProfileScreenState extends State<SonsProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.GrAY_Light_Back_COLOR,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text_widget(text: getTranslated(context, 'father_text1')!, text_size: 16.sp , text_color: AppColors.GrAY_DRAWER_COLOR,),
              SizedBox(height: 3.h,),
              CardProfile(text: getTranslated(context, 'father_text1')!,),
              //  TextFieldWidget(label_text: getTranslated(context, 'father_text1')!, hint_size: 12.sp, label_size: 12.sp,color_font: AppColors.BASIC_BROWN_COLOR,),
              SizedBox(height: 20.h,),
              Text_widget(text: getTranslated(context, 'father_text2')!, text_size: 16.sp , text_color: AppColors.GrAY_DRAWER_COLOR,textAlign: TextAlign.start),
              SizedBox(height: 3.h,),
              CardProfile(text:'00'),
              SizedBox(height: 25.h,),
              AppWidgetElevatedButton(text: getTranslated(context, 'father_text4')!, onpressed: (){
                Navigator.pushNamed(context, '/profile_edit');
              }, background_color: AppColors.BASIC_BROWN_COLOR, color_text: Colors.black,border_size: 5,),
              SizedBox(height: 25.h,),


            ],
          ),
        ),
      ),

    );
  }
}
