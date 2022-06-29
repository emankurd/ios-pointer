import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/login/check_login_screen.dart';
import 'package:ios_pentor/login/signup_screen1.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_field_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({Key? key}) : super(key: key);

  @override
  _LoginScreen1State createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
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
              padding: EdgeInsets.symmetric( horizontal:30.w , vertical: 120.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                 // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text_widget(text: 'logo', text_size: 30.sp , fontWeight: FontWeight.w500,),
                    SizedBox(height: 10.h,),
                    Text_widget(text: getTranslated(context, 'check_login_text1')!, text_size: 18.sp,fontWeight: FontWeight.w500),
                    SizedBox(height: 130.h,),
                    TextFieldWidget(textInputType:TextInputType.number , fontWeight: FontWeight.w400,color_font: AppColors.BASIC_BROWN_COLOR,label_size: 14.sp , label_text: getTranslated(context, 'signup_text1'),),
                    SizedBox(height: 40.h,),
                   AppWidgetElevatedButton(text: getTranslated(context, 'check')!, onpressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                       return CheckLoginScreen1();
                     }));
                   } , border_size: 5,color_text: Colors.black,background_color: AppColors.BASIC_BROWN_COLOR,),
                    SizedBox(height: 20.h,),
                    AppWidgetElevatedButton(text: getTranslated(context, 'check_signup_text2')!, onpressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return SignUpScreen1();
                      }));
                    } , border_size: 5,color_text: AppColors.BASIC_BROWN_COLOR, background_color: Colors.transparent,side_color: AppColors.BASIC_BROWN_COLOR,),


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




