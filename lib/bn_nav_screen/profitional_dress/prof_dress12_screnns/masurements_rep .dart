
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/column_preview_widget.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MeasurementsRep extends StatefulWidget {

  @override
  _MeasurementsRepState createState() => _MeasurementsRepState();
}

class _MeasurementsRepState extends State<MeasurementsRep> {
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
          title: Text_widget(text_size: 16,text: getTranslated(context, 'uber_text1')! ,text_color: Colors.white,fontWeight: FontWeight.w400,),
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
        padding: EdgeInsets.symmetric(horizontal: 20.w , vertical:40.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text_widget(textAlign: TextAlign.start,text:getTranslated(context, 'uber_text2')! , text_size: 16 ,text_color: AppColors.BASIC_BROWN_COLOR),
          Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150.w,
                    child: ListTile(
                        minLeadingWidth:5,
                        horizontalTitleGap: 0,
                        leading: Icon(Icons.location_on_sharp, size: 25,),
                        title: Text_widget(textAlign : TextAlign.start, text: getTranslated(context, 'uber_text3')! , text_color: AppColors.GrAY_DRAWER_COLOR, text_size: 14,)
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            SizedBox(
                                height:35,
                                child: Text_widget(text: getTranslated(context, 'uber_text4')! , text_size: 14 , fontWeight: FontWeight.w400,)),
                            SizedBox(
                              height:30,
                              child: TextField(
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: AppColors.BASIC_BROWN_COLOR,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width:20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height:35,
                                child: Text_widget(text: getTranslated(context, 'uber_text5')! , text_size: 14 , text_color: AppColors.GrAY_DRAWER_COLOR,)),
                            SizedBox(
                              height:30,

                              child: TextField(
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: AppColors.GrAY_DRAWER_COLOR,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height:15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height:35,
                                child: Text_widget(text:getTranslated(context, 'bar_text6')! , text_size: 14 , text_color: AppColors.GrAY_DRAWER_COLOR,)),
                            SizedBox(
                              height:30,
                              child: TextField(
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: AppColors.GrAY_DRAWER_COLOR,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width:20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height:35,
                                child: Text_widget(text: getTranslated(context, 'bar_text7')! , text_size: 14 , text_color: AppColors.GrAY_DRAWER_COLOR,)),
                            SizedBox(
                              height:30,

                              child: TextField(
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: AppColors.GrAY_DRAWER_COLOR,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height:15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height:35,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.only(start: 10),
                            child: Text_widget(textAlign:TextAlign.start ,text: getTranslated(context, 'bar_text8')! , text_size: 14 , text_color: AppColors.GrAY_DRAWER_COLOR,),
                          )),
                      SizedBox(
                        height:30,
                        child: TextField(
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: AppColors.GrAY_DRAWER_COLOR,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height:15),
                  Text_widget(textAlign: TextAlign.start,text:getTranslated(context, 'bar_text9')! , text_size: 16 ,text_color: AppColors.BASIC_BROWN_COLOR),
                  SizedBox(height: 10.h,),
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
                  SizedBox(height: 25,),
                  Text_widget(textAlign: TextAlign.start,text:getTranslated(context, 'bar_text10')! , text_size: 16 ,text_color: AppColors.BASIC_BROWN_COLOR),
                  SizedBox(height: 10.h,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          width: 100.w,
                          decoration:BoxDecoration(
                              color: AppColors.GrAY_Light_Back_COLOR,
                              borderRadius: BorderRadius.circular(10.r),
                              boxShadow: [
                                BoxShadow(
                                    color: AppColors.BASIC_BROWN_COLOR,
                                    spreadRadius: 0.5
                                )
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text_widget(textAlign: TextAlign.center, text:'August 22', text_size: 16.sp, text_color: Colors.black,),
                              SizedBox(height: 8.h,),
                              Text_widget(textAlign: TextAlign.center, text:getTranslated(context, 'bar_text11'), text_size: 12.sp, text_color: Colors.grey.shade400,)

                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          width: 100.w,
                          decoration:BoxDecoration(
                              color: AppColors.GrAY_Light_Back_COLOR,
                              borderRadius: BorderRadius.circular(10.r),
                              boxShadow: [
                                BoxShadow(
                                    color: AppColors.BASIC_BROWN_COLOR,
                                    spreadRadius: 0.5
                                )
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text_widget(textAlign: TextAlign.center, text:'August 22', text_size: 16.sp, text_color: Colors.black,),
                              SizedBox(height: 8.h,),
                              Text_widget(textAlign: TextAlign.center, text:getTranslated(context, 'bar_text11'), text_size: 12.sp, text_color: Colors.grey.shade400,)

                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          width: 100.w,
                          decoration:BoxDecoration(
                              color: AppColors.GrAY_Light_Back_COLOR,
                              borderRadius: BorderRadius.circular(10.r),
                              boxShadow: [
                                BoxShadow(
                                    color: AppColors.BASIC_BROWN_COLOR,
                                    spreadRadius: 0.5
                                )
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text_widget(textAlign: TextAlign.center, text:'August 22', text_size: 16.sp, text_color: Colors.black,),
                              SizedBox(height: 8.h,),
                              Text_widget(textAlign: TextAlign.center, text:getTranslated(context, 'bar_text11'), text_size: 12.sp, text_color: Colors.grey.shade400,)

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40.h,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            width: 100.w,
                            decoration:BoxDecoration(
                                color: AppColors.GrAY_Light_Back_COLOR,
                                borderRadius: BorderRadius.circular(10.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.BASIC_BROWN_COLOR,
                                      spreadRadius: 0.5
                                  )
                                ]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text_widget(textAlign: TextAlign.center, text:'10-12 am', text_size: 16.sp, text_color: Colors.black,),
                                SizedBox(height: 8.h,),
                                Text_widget(textAlign: TextAlign.center, text:getTranslated(context, 'bar_text12'), text_size: 12.sp, text_color: Colors.red,)

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20.w,),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            width: 100.w,
                            decoration:BoxDecoration(
                                color: AppColors.GrAY_Light_Back_COLOR,
                                borderRadius: BorderRadius.circular(10.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.BASIC_BROWN_COLOR,
                                      spreadRadius: 0.5
                                  )
                                ]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text_widget(textAlign: TextAlign.center, text:'10-12 am', text_size: 16.sp, text_color: Colors.black,),
                                SizedBox(height: 8.h,),
                                Text_widget(textAlign: TextAlign.center, text:getTranslated(context, 'bar_text13'), text_size: 12.sp, text_color: AppColors.Green_COLOR,)

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            width: 100.w,
                            decoration:BoxDecoration(
                                color: AppColors.GrAY_Light_Back_COLOR,
                                borderRadius: BorderRadius.circular(10.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.BASIC_BROWN_COLOR,
                                      spreadRadius: 0.5
                                  )
                                ]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text_widget(textAlign: TextAlign.center, text:'10-12 am', text_size: 16.sp, text_color: Colors.black,),
                                SizedBox(height: 8.h,),
                                Text_widget(textAlign: TextAlign.center, text:getTranslated(context, 'bar_text13'), text_size: 12.sp, text_color: AppColors.Green_COLOR,)

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20.w,),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            width: 100.w,
                            decoration:BoxDecoration(
                                color: AppColors.GrAY_Light_Back_COLOR,
                                borderRadius: BorderRadius.circular(10.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.BASIC_BROWN_COLOR,
                                      spreadRadius: 0.5
                                  )
                                ]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text_widget(textAlign: TextAlign.center, text:'10-12 am', text_size: 16.sp, text_color: Colors.black,),
                                SizedBox(height: 8.h,),
                                Text_widget(textAlign: TextAlign.center, text:getTranslated(context, 'bar_text13'), text_size: 12.sp, text_color: AppColors.Green_COLOR,)

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            width: 100.w,
                            decoration:BoxDecoration(
                                color: AppColors.GrAY_Light_Back_COLOR,
                                borderRadius: BorderRadius.circular(10.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.BASIC_BROWN_COLOR,
                                      spreadRadius: 0.5
                                  )
                                ]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text_widget(textAlign: TextAlign.center, text:'10-12 am', text_size: 16.sp, text_color: Colors.black,),
                                SizedBox(height: 8.h,),
                                Text_widget(textAlign: TextAlign.center, text:getTranslated(context, 'bar_text13'), text_size: 12.sp, text_color: AppColors.Green_COLOR,)

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20.w,),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            width: 100.w,
                            decoration:BoxDecoration(
                                color: AppColors.GrAY_Light_Back_COLOR,
                                borderRadius: BorderRadius.circular(10.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.BASIC_BROWN_COLOR,
                                      spreadRadius: 0.5
                                  )
                                ]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text_widget(textAlign: TextAlign.center, text:'10-12 am', text_size: 16.sp, text_color: Colors.black,),
                                SizedBox(height: 8.h,),
                                Text_widget(textAlign: TextAlign.center, text:getTranslated(context, 'bar_text13'), text_size: 12.sp, text_color: AppColors.Green_COLOR,)

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 40.h,),

                  AppWidgetElevatedButton(
                    text: getTranslated(context, 'bock_text5')!, onpressed: (){
                    Navigator.pop(context);
                  },
                    color_text: Colors.black,
                    background_color: AppColors.BASIC_BROWN_COLOR,
                    border_size: 15.r,
                  )
                ],
              ),

            ],

          ),
        ),
      )
    ));
  }
}
