
import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
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
          title: Text_widget(text_size: 16,text: getTranslated(context, 'prof_sec13_text1')! ,text_color: Colors.white,fontWeight: FontWeight.w400,),
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
              Container(
                width: 400.w,
                padding: EdgeInsets.symmetric(horizontal: 20.w , vertical:4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: AppColors.BASIC_BROWN_COLOR, style: BorderStyle.solid, width: 0.80),
                ),
                child: SizedBox(
                    height: 50.h,
                    child: DropdownButton<String>(
                      hint: Text_widget(text: getTranslated(context, 'signup_text3')!,text_size: 14.sp,text_color: Colors.black),
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down , color: AppColors.BASIC_BROWN_COLOR, ),
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
              Container(
                width: 400.w,
                padding: EdgeInsets.symmetric(horizontal: 20.w , vertical:4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: AppColors.BASIC_BROWN_COLOR, style: BorderStyle.solid, width: 0.80),
                ),
                child: SizedBox(
                    height: 50.h,
                    child: DropdownButton<String>(
                      hint: Text_widget(text: getTranslated(context, 'bock_text2')!,text_size: 14.sp,text_color: Colors.black),
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down , color: AppColors.BASIC_BROWN_COLOR, ),
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
              Container(
                height: 50.h,
                width: 400.w,
                padding: EdgeInsets.symmetric(horizontal: 20.w , vertical:4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: AppColors.BASIC_BROWN_COLOR, style: BorderStyle.solid, width: 0.80),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text_widget(text: getTranslated(context, 'bock_text3')!  , text_size: 14.sp , text_color: Colors.grey.shade400,),
                        Text_widget(text: '18/5/1995', text_size: 14.sp,  text_color: Colors.black,)
                      ],
                    ),
                    Spacer(),
                    Text_widget(text: '|',text_color: Colors.grey.shade400,text_size: 24,),
                    Spacer(),
                    Column(
                      children: [
                        Text_widget(text: getTranslated(context, 'bock_text4')!, text_size: 14.sp,  text_color: Colors.grey.shade400,),
                        Text_widget(text: '11: 00 am', text_size: 12.sp,  text_color: Colors.black,)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 340.h,),
              AppWidgetElevatedButton(text:  getTranslated(context, 'bock_text5')!, onpressed:(){},
                background_color: AppColors.BASIC_BROWN_COLOR,
                color_text: Colors.black,
              )
            ],

          ),
        ),
      )
    ));
  }
}
