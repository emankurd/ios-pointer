import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/shared_pref/shared_pref_language.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_field_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../main2_screen.dart';
class CheckLoginScreen1 extends StatefulWidget {

  @override
  _CheckLoginScreen1State createState() => _CheckLoginScreen1State();
}

class _CheckLoginScreen1State extends State<CheckLoginScreen1> {
  bool checkedValue=false;
  bool isPressed=false;
  final String requiredNumber = '12345';

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
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric( vertical: 120.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text_widget(text: 'logo', text_size: 30.sp , fontWeight: FontWeight.w500,),
                    SizedBox(height: 10.h,),
                    Text_widget(text:  getTranslated(context, 'check_login_text1')!, text_size: 18.sp,fontWeight: FontWeight.w500),
                    SizedBox(height: 130.h,),
                    Padding(
                      padding: EdgeInsets.symmetric( horizontal: 30.w),
                      child: TextFieldWidget(textInputType:TextInputType.number , fontWeight: FontWeight.w400,color_font: AppColors.BASIC_BROWN_COLOR,label_size: 14.sp , label_text: getTranslated(context, 'signup_text1'),hint_size: 14.sp,),
                    ),
                    SizedBox(height: 24.h,),
                    Padding(
                      padding: EdgeInsets.only(right: 30.w , left: 30.w),
                      child: PinCodeTextField(
                        keyboardType: TextInputType.number,
                        textStyle: TextStyle(
                          color: Colors.white
                        ),
                        appContext: context,
                        length: 5,
                        onChanged: (value) {
                          print(value);
                        },
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 50,
                          inactiveColor: AppColors.BASIC_BROWN_COLOR,
                          activeColor: AppColors.BASIC_BROWN_COLOR,
                          selectedColor: AppColors.BASIC_BROWN_COLOR,
                        ),
                        onCompleted: (value){
                          if(value == requiredNumber){
                            print('valid pin');
                          } else {
                            print('invalid pin');
                          }
                        },
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: SizedBox(
                        width: AppPrefController().languageCode =='en' ? 190.w :150.w,
                        child: ListTile(
                        horizontalTitleGap: 1,
                        minLeadingWidth: 15,
                        // contentPadding: EdgeInsets.zero,
                          title: Text_widget(textAlign: TextAlign.start, text:  getTranslated(context, 'check_login_text2')!,text_color: Colors.white,text_size: 12.sp,),
                          leading: isPressed ? SizedBox(
                            width: 24.w,
                            height: 24.h,
                            child: Card(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 15.r,
                              ),
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.r),
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  )
                              ),

                            ),
                          ):
                          SizedBox(
                            width: 24.w,
                            height: 24.h,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  isPressed=true;
                                });
                              },
                              child: Card(
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.r),
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  )
                                ),

                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h,),
                    Padding(
                      padding: EdgeInsets.symmetric( horizontal: 30.w),
                      child: AppWidgetElevatedButton(text: getTranslated(context, 'check_login_text3')!, onpressed: (){
                        if(isPressed){
                          Navigator.pushReplacementNamed(context, '/main2_screen');
                        }
                      } , border_size: 5,color_text: Colors.black,background_color: AppColors.BASIC_BROWN_COLOR,),
                    ),


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




