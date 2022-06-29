
import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/card_row_widget.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterYourSize extends StatefulWidget {
  const EnterYourSize({Key? key}) : super(key: key);

  @override
  _EnterYourSizeState createState() => _EnterYourSizeState();
}

class _EnterYourSizeState extends State<EnterYourSize> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.GrAY_Light_Back_COLOR,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: AppColors.Bar_COLOR,
        iconTheme: IconThemeData(
          size: 30.h,
          color: Colors.white,
        ),
          title: Text_widget(text_size: 16,text: getTranslated(context, 'enter_size_text1')! ,text_color: Colors.white,fontWeight: FontWeight.w400,),
        centerTitle: true,
        actionsIconTheme: IconThemeData(
          size: 25.r,
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 25.r,
          ),
        ),

      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w , vertical:40.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardRowWidget(text_field: getTranslated(context, 'enter_size_text2')!,color_field: AppColors.BASIC_BROWN_COLOR,hint_color: Colors.grey,text_hint: getTranslated(context, 'enter_size_text2')!,),
              SizedBox(height: 16.h,),
              CardRowWidget(text_field: getTranslated(context, 'enter_size_text3')!,color_field: AppColors.BASIC_BROWN_COLOR,hint_color: Colors.grey,text_hint: getTranslated(context, 'enter_size_text2')!,),
              SizedBox(height: 16.h,),
              CardRowWidget(text_field: getTranslated(context, 'enter_size_text4')!,color_field: AppColors.BASIC_BROWN_COLOR,hint_color: Colors.grey,text_hint: getTranslated(context, 'enter_size_text2')!,),
              SizedBox(height: 16.h,),
              CardRowWidget(text_field: getTranslated(context, 'enter_size_text5')!,color_field: AppColors.BASIC_BROWN_COLOR,hint_color: Colors.grey,text_hint: getTranslated(context, 'enter_size_text2')!,),
              SizedBox(height: 16.h,),
              CardRowWidget(text_field: getTranslated(context, 'enter_size_text6')!,color_field: AppColors.BASIC_BROWN_COLOR,hint_color: Colors.grey,text_hint: getTranslated(context, 'enter_size_text2')!,),
              SizedBox(height: 16.h,),
              CardRowWidget(text_field: getTranslated(context, 'enter_size_text7')!,color_field: AppColors.BASIC_BROWN_COLOR,hint_color: Colors.grey,text_hint: getTranslated(context, 'enter_size_text2')!,),
              SizedBox(height: 16.h,),
              CardRowWidget(text_field: getTranslated(context, 'enter_size_text8')!,color_field: AppColors.BASIC_BROWN_COLOR,hint_color: Colors.grey,text_hint: getTranslated(context, 'enter_size_text2')!,),
              SizedBox(height: 16.h,),
              CardRowWidget(text_field: getTranslated(context, 'enter_size_text9')!,color_field: AppColors.BASIC_BROWN_COLOR,hint_color: Colors.grey,text_hint: getTranslated(context, 'enter_size_text2')!,),
              SizedBox(height: 16.h,),
              CardRowWidget(text_field: getTranslated(context, 'enter_size_text10')!,color_field: AppColors.BASIC_BROWN_COLOR,hint_color: Colors.grey,text_hint: getTranslated(context, 'enter_size_text2')!,),
              SizedBox(height: 16.h,),
              CardRowWidget(text_field: getTranslated(context, 'enter_size_text11')!,color_field: AppColors.BASIC_BROWN_COLOR,hint_color: Colors.grey,text_hint: getTranslated(context, 'enter_size_text2')!,),
              SizedBox(height: 16.h,),
              CardRowWidget(text_field: getTranslated(context, 'enter_size_text12')!,color_field: AppColors.BASIC_BROWN_COLOR,hint_color: Colors.grey,text_hint: getTranslated(context, 'enter_size_text2')!,),
              SizedBox(height: 25.h,),
              AppWidgetElevatedButton(text:  getTranslated(context, 'saved_sizes_bar')!, onpressed:(){},
                background_color: AppColors.BASIC_BROWN_COLOR,
                color_text: Colors.black,
                border_size: 15.r,
              )
            ],

          ),
        ),
      )
    ));
  }
}
