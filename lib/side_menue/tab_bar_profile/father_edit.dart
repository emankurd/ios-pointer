import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_field_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FatherProfileEditScreen extends StatefulWidget {
  const FatherProfileEditScreen({Key? key}) : super(key: key);

  @override
  _FatherProfileEditScreenState createState() => _FatherProfileEditScreenState();
}

class _FatherProfileEditScreenState extends State<FatherProfileEditScreen> {
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
              Text_widget(text: getTranslated(context, 'father_text1')!, text_size: 16.sp , text_color: AppColors.GrAY_DRAWER_COLOR,textAlign: TextAlign.start),
              SizedBox(height: 3.h,),
              TextFieldWidget(label_text: getTranslated(context, 'father_text1')!, hint_size: 12.sp, label_size: 12.sp,color_font: AppColors.BASIC_BROWN_COLOR,),
              SizedBox(height: 20.h,),
              Text_widget(text: getTranslated(context, 'father_text2')!, text_size: 16.sp , text_color: AppColors.GrAY_DRAWER_COLOR,textAlign: TextAlign.start),
              SizedBox(height: 3.h,),
              TextFieldWidget(label_text: '00', hint_size: 12.sp, label_size: 12.sp,color_font: AppColors.BASIC_BROWN_COLOR,),
              SizedBox(height: 3.h,),
              Align(
           alignment: AlignmentDirectional.topEnd,
           child: InkWell(
             child: Card(
               shape: RoundedRectangleBorder(
                 side: BorderSide(
                   width: 1.w,
                   color: AppColors.Green_COLOR
                 )
               ),
               elevation: 0,
               color: AppColors.GrAY_Light_Back_COLOR,
             clipBehavior: Clip.antiAlias,
             child: SizedBox(
             width: 40.w,
             height: 40.h,
             child: Center(child: Text_widget(textAlign: TextAlign.start, text: '+', text_size: 30.sp,text_color:AppColors.Green_COLOR, )))),
                    ),
                  ),
              Text_widget(text: getTranslated(context, 'signup_text3')!, text_size: 16.sp , text_color: AppColors.GrAY_DRAWER_COLOR,textAlign: TextAlign.start),
              SizedBox(height: 3.h,),
              TextFieldWidget(label_text: getTranslated(context, 'signup_text3')!, hint_size: 12.sp, label_size: 12.sp,color_font: AppColors.BASIC_BROWN_COLOR,),
              SizedBox(height: 20.h,),
              Text_widget(text: getTranslated(context, 'signup_text1')!, text_size: 16.sp , text_color: AppColors.GrAY_DRAWER_COLOR,textAlign: TextAlign.start),
              SizedBox(height: 3.h,),

              TextFieldWidget(label_text: '00', hint_size: 12.sp, label_size: 12.sp,color_font: AppColors.BASIC_BROWN_COLOR,),
              SizedBox(height: 20.h,),
              Text_widget(text: getTranslated(context, 'father_text3')!, text_size: 16.sp , text_color: AppColors.GrAY_DRAWER_COLOR,),
              SizedBox(height: 3.h,),

              TextFieldWidget(label_text: getTranslated(context, 'father_text3')!, hint_size: 12.sp, label_size: 12.sp,color_font: AppColors.BASIC_BROWN_COLOR,textAlign: TextAlign.start,),
              SizedBox(height: 25.h,),
               AppWidgetElevatedButton(text: getTranslated(context, 'father_text4')!, onpressed: (){

               }, background_color: AppColors.BASIC_BROWN_COLOR, color_text: Colors.black,border_size: 5,),
              SizedBox(height: 25.h,),


            ],
          ),
        ),
      ),

    );
  }
}
