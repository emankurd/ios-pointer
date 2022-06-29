import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/card_row_widget.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:intl/intl.dart';
class SignUpScreen2 extends StatefulWidget {
  const SignUpScreen2({Key? key}) : super(key: key);

  @override
  _SignUpScreen2State createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  DateTime? _selectedDate;
  String? dob;

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

              padding: EdgeInsets.only(left: 30.w, right: 30.w , top: 120.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                 // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text_widget(text: 'logo', text_size: 30.sp , fontWeight: FontWeight.w500,),
                    SizedBox(height: 10.h,),
                    Text_widget(text: getTranslated(context, 'check_signup_text1')!, text_size: 18.sp,fontWeight: FontWeight.w500),
                    SizedBox(height: 80.h,),

                    CardRowWidget(text_field: getTranslated(context, 'signup_text1')!,text_hint: '0500000000',),
                    SizedBox(height: 20.h,),
                    CardRowWidget(text_field: getTranslated(context, 'signup_text2')!,text_hint: 'Ali Ali Ali',),

                    SizedBox(height: 20.h,),
                    // CardRowWidget(text_field: 'City',text_hint: '00',),
                    Container(
                      width: 400.w,
                      padding: EdgeInsets.symmetric(horizontal: 20.w , vertical:4.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                            color: AppColors.BASIC_BROWN_COLOR, style: BorderStyle.solid, width: 0.80),
                      ),
                      child: SizedBox(
                        height: 50.h,
                        child: DropdownButton<String>(
                          hint: Text_widget(text: getTranslated(context, 'signup_text3')!,text_size: 14.sp,text_color: AppColors.BASIC_BROWN_COLOR,),
                                  isExpanded: true,
                                  icon: Icon(Icons.keyboard_arrow_down , color: Colors.white, ),
                          items: <String>['A', 'B', 'C', 'D'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                              //         icon: Padding(
                              //             padding: EdgeInsetsDirectional.only(start: SizeConfig().scaleWidth(120)),
                              //             child: Icon(Icons.location_city , )),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        )

                      ),
                    ),
                    SizedBox(height: 20.h,),


                   InkWell(
                     onTap: (){
                       _pickDateDialog();
                     },
                     child: Card(
                       color: Colors.transparent ,
                       elevation: 0,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(5),
                           side: BorderSide(
                               color: AppColors.BASIC_BROWN_COLOR,
                               width: 1
                           )
                       ),
                       child: SizedBox(
                         height: 55,
                         child: Padding(
                           padding: const EdgeInsetsDirectional.only(end: 30 ,start: 20),

                           child: Row(
                             children: [
                               Expanded(child: Text_widget(text: getTranslated(context, 'signup_text4')!, text_size: 14.sp,textAlign: TextAlign.start,)),
                               Text_widget( text:   _selectedDate == null //ternary expression to check if date is null
                                   ? getTranslated(context, 'signup_text5')!
                                   : '${DateFormat.yMd().format(_selectedDate!)}'
                                 , text_size: 14.sp , text_color: Colors.white,)
                             ],
                           ),
                         ),
                       ),
                     )
                   ),

                    SizedBox(height: 40.h,),
                    //    TextFieldWidget(textInputType:TextInputType.number , fontWeight: FontWeight.w400,color_font: AppColors.BASIC_BROWN_COLOR,label_size: 14 , label_text: 'phone number',),
                   AppWidgetElevatedButton(text: getTranslated(context, 'check_login_text1')!, onpressed: (){
                     Navigator.pushReplacementNamed(context, '/main2_screen');
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

  void _pickDateDialog() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        //which date will display when user open the picker
        firstDate: DateTime(1950),
        //what will be the previous supported year in picker
        lastDate: DateTime
            .now()) //what will be the up to supported date in picker
        .then((pickedDate) {
      //then usually do the future job
      if (pickedDate == null) {
        //if user tap cancel then this function will stop
        return;
      }
      setState(() {
        //for rebuilding the ui
        _selectedDate = pickedDate;

        dob = DateFormat.yMd().format(_selectedDate!);
        print('dob: $dob');
      });
    });
  }

}






