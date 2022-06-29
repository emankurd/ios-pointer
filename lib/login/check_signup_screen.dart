import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/login/signup_screen2.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_field_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
class CheckSignUpScreen1 extends StatefulWidget {
  const CheckSignUpScreen1({Key? key}) : super(key: key);

  @override
  _CheckSignUpScreen1State createState() => _CheckSignUpScreen1State();
}

class _CheckSignUpScreen1State extends State<CheckSignUpScreen1> {
  bool checkedValue=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaY: 10.h,sigmaX: 10.w),
              child: Image.asset('images/back_login.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
                //  cacheHeight: 5,
                // isAntiAlias: true,
                // fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric( horizontal: 30.w, vertical: 120.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text_widget(text: 'logo', text_size: 30.sp , fontWeight: FontWeight.w500,),
                    SizedBox(height: 10.h,),
                    Text_widget(text: getTranslated(context, 'check_signup_text1')!, text_size: 18.sp,fontWeight: FontWeight.w500),
                    SizedBox(height: 130.h,),
                    TextFieldWidget(textInputType:TextInputType.number , fontWeight: FontWeight.w400,color_font: AppColors.BASIC_BROWN_COLOR,label_size: 14.sp , label_text: 'phone number',hint_size: 14.sp,),
                    SizedBox(height: 24.h,),
                    SizedBox(
                      height: 65.h,
                      child: Card(
                       //   margin: EdgeInsets.symmetric( horizontal: 30.w),
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r),
                              side: BorderSide(
                                width: 1.w,
                                color: AppColors.BASIC_BROWN_COLOR,
                              )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    cursorColor: Colors.red,
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationThickness: 8,
                                      decorationColor: AppColors.BASIC_BROWN_COLOR,
                                    ),
                                  ),),
                                SizedBox(width: 30,),
                                Expanded(child: TextField(
                                  style: TextStyle(
                                      decorationThickness: 8,
                                      decoration: TextDecoration.underline,
                                      decorationColor: AppColors.BASIC_BROWN_COLOR
                                  ),
                                ),),
                                SizedBox(width: 30,),
                                Expanded(child: TextField(
                                  style: TextStyle(
                                      decorationThickness: 8,
                                      decoration: TextDecoration.underline,
                                      decorationColor: AppColors.BASIC_BROWN_COLOR
                                  ),
                                ),),
                                SizedBox(width: 30,),
                                Expanded(child: TextField(
                                  style: TextStyle(
                                      decorationThickness: 8,
                                      decoration: TextDecoration.underline,
                                      decorationColor: AppColors.BASIC_BROWN_COLOR
                                  ),
                                ),),
                                SizedBox(width: 30,),
                                Expanded(child: TextField(
                                  style: TextStyle(
                                      decorationThickness: 8,
                                      decoration: TextDecoration.underline,
                                      decorationColor: AppColors.BASIC_BROWN_COLOR
                                  ),
                                ),),
                              ],
                            ),
                          )
                      ),
                    ),                    SizedBox(height: 40.h,),
                    AppWidgetElevatedButton(text: getTranslated(context, 'check_signup_text2')!, onpressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return SignUpScreen2();
                      }));
                    } , border_size: 5,color_text: Colors.black,background_color: AppColors.BASIC_BROWN_COLOR,),


                  ],
                ),
              ),
            ),
          ],

        ),
      ),

    );
  }
}




