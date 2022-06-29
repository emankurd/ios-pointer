import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress2.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/shared_pref/shared_pref_language.dart';
import 'package:ios_pentor/side_menue/cart_screen.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/widgets/column_preview_widget.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
class Profetional_dress8 extends StatefulWidget {
  const Profetional_dress8({Key? key}) : super(key: key);

  @override
  _Profetional_dress8State createState() => _Profetional_dress8State();
}

class _Profetional_dress8State extends State<Profetional_dress8> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.GrAY_Light_Back_COLOR,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: AppColors.Bar_COLOR,
        iconTheme: IconThemeData(
          size: 25.h,
          color: Colors.white,
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
        title: Text_widget(text_size: 16,text: getTranslated(context, 'prof_text1')! ,text_color: Colors.white,fontWeight: FontWeight.w400,),

        centerTitle: true,

        actions: [
          IconButton(
            icon: Padding(
              padding: EdgeInsetsDirectional.only(start: 20),
              child: Icon(Icons.search , ),
            ) ,
            onPressed: () {
            },
          ),
          Padding(
              padding: EdgeInsetsDirectional.only(end: 10),
              child: IconButton(
                icon: Icon(Icons.shopping_cart_outlined ,size: 20,) ,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CartScreen();
                  }));
                },
              ))
        ],

      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/design_prof_dress.png',fit: BoxFit.fill,
              width: double.infinity,
              height:300.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16 ,vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text_widget(textAlign: TextAlign.start, text: getTranslated(context, 'prof_sec8_text1')!, text_size: 18),
                      SizedBox(height: 10.h,),
                      Row(
                        children: [
                          AppWidgetElevatedButton(height_size: 40.h, width_size: 120.w,  text: getTranslated(context, 'prof_sec8_text2')!, onpressed: (){},
                            background_color: AppColors.GrAY_Light_Back_COLOR,
                            color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                          ),
                          SizedBox(width: 10.w,),
                          AppWidgetElevatedButton(height_size: 40.h,width_size: 120.w,  text: getTranslated(context, 'prof_sec8_text3')!, onpressed: (){},
                            background_color: AppColors.GrAY_Light_Back_COLOR,
                            color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  Divider(
                    color: AppColors.BASIC_BROWN_COLOR,
                    endIndent: 15,
                    indent: 15,
                  ),
                  SizedBox(height: 10.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text_widget(textAlign: TextAlign.start, text: getTranslated(context, 'prof_sec8_text4')!, text_size: 18),
                      SizedBox(height: 10.h,),
                      Container(
                        width: 200.w,
                        margin: EdgeInsetsDirectional.only(end: 150),
                        padding: EdgeInsets.symmetric(horizontal: 20.w , vertical:4.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                              color: AppColors.BASIC_BROWN_COLOR, style: BorderStyle.solid, width: 0.80),
                        ),
                        child: SizedBox(
                            height: 35.h,
                            child: DropdownButton<String>(
                              hint: Text_widget(text: getTranslated(context, 'prof_sec8_text5')!,text_size: 14.sp,text_color: Colors.black,),
                              isExpanded: true,
                              icon: Icon(Icons.keyboard_arrow_down , color: AppColors.BASIC_BROWN_COLOR, ),
                              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),

                                );
                              }).toList(),
                              onChanged: (_) {},
                            )

                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  Divider(
                    color: AppColors.BASIC_BROWN_COLOR,
                    endIndent: 15,
                    indent: 15,
                  ),
                  SizedBox(height: 10.h,),
                  Column(
                    children: [
                      Row(
                        children: [
                          ColumnPreviewWidget(image_path: 'images/preview.png',),
                          SizedBox(width: 5.w,),
                          ColumnPreviewWidget(image_path: 'images/preview.png',),
                          SizedBox(width: 5.w,),
                          ColumnPreviewWidget(image_path: 'images/preview.png',),
                          SizedBox(width: 5.w,),
                          ColumnPreviewWidget(image_path: 'images/preview.png',),


                        ],
                      ),
                      SizedBox(height: 15.h,),
                      Row(
                        children: [
                          ColumnPreviewWidget(image_path: 'images/preview.png',),
                          SizedBox(width: 5.w,),
                          ColumnPreviewWidget(image_path: 'images/preview.png',),
                          SizedBox(width: 5.w,),
                          ColumnPreviewWidget(image_path: 'images/preview.png',),
                          SizedBox(width: 5.w,),
                          ColumnPreviewWidget(image_path: 'images/preview.png',),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h,),
                  SizedBox(
                    width: 90.w,
                    height: 40.h,
                    child: ListTile(
                      onTap: (){
                        Navigator.pushNamed(context, '/prof_dress9');
                      },
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 0,
                      title: Text_widget(textAlign: TextAlign.end,text_size: 14.sp, text: getTranslated(context, 'next')!,),
                      trailing: Icon(
                        Icons.arrow_forward_ios, color: AppColors.BASIC_BROWN_COLOR,
                      ),
                    ),
                  ),
                  Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(start: 190),
                        child: Text_widget(textAlign: TextAlign.start,text_size: 8.sp, text: getTranslated(context, 'prof_sec4_text2'),),
                      )),
                  Center(child: AppPrefController().languageCode == 'en' ? Image.asset('images/group8.png'): Image.asset('images/group6.png') ),

                ],
              ),
            )
          ]
    )
    )
    )
    );
  }
}


