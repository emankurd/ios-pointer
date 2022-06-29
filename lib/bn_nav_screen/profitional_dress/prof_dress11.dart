import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress2.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/side_menue/cart_screen.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/widgets/card_prof.dart';
import 'package:ios_pentor/widgets/card_row_widget.dart';
import 'package:ios_pentor/widgets/column_preview_widget.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
class Profetional_dress11 extends StatefulWidget {
  const Profetional_dress11({Key? key}) : super(key: key);

  @override
  _Profetional_dress11State createState() => _Profetional_dress11State();
}

class _Profetional_dress11State extends State<Profetional_dress11> {

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
              padding: const EdgeInsets.symmetric(horizontal: 16 ,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: Text_widget(text: '${getTranslated(context, 'prof_text6')!}: ', text_size: 18),
                      ),
                      SizedBox(width: 2.w,),
                      AppWidgetElevatedButton(height_size: 30.h, width_size:100.w, text:'${ getTranslated(context, 'prof_text2')!}', onpressed: (){},
                        background_color: AppColors.BASIC_BROWN_COLOR,
                        color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10, ),
                        child: AppWidgetElevatedButton(height_size: 20.h, width_size:30.w, text:getTranslated(context, 'prof_sec11_text1')!, onpressed: (){},
                          background_color: AppColors.GrAY_Light_Back_COLOR,
                          color_text: Colors.grey.shade500,fontSize: 8.sp,
                          value: 1,
                          widthRow: 40,
                          iconData: Icons.edit,
                          colorIcon: Colors.grey.shade500,
                          side_color: AppColors.GrAY_Light_Back_COLOR,
                          sizeIcon: 10,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.BASIC_BROWN_COLOR,
                    endIndent: 15,
                    indent: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: Text_widget(text: '${getTranslated(context, 'prof_sec2_text1')!}', text_size: 18),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:AppWidgetElevatedButton(height_size: 30.h, text: getTranslated(context, 'prof_sec2_text2')!, onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            child: AppWidgetElevatedButton( height_size: 30,text: getTranslated(context, 'prof_sec2_text8')!, onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            child: AppWidgetElevatedButton(height_size: 30.h, widthRow :40.w ,text: getTranslated(context, 'prof_sec2_text9')!, onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            )
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          height: 20.h,
                          child: AppWidgetElevatedButton(height_size: 10.h, width_size:40.w, text:getTranslated(context, 'prof_sec11_text1')!, onpressed: (){},
                            background_color: AppColors.GrAY_Light_Back_COLOR,
                            color_text: Colors.grey.shade500,fontSize: 8.sp,
                            value: 1,
                            widthRow: 40,
                            iconData: Icons.edit,
                            colorIcon: Colors.grey.shade500,
                            side_color: AppColors.GrAY_Light_Back_COLOR,
                            sizeIcon: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.BASIC_BROWN_COLOR,
                    endIndent: 15,
                    indent: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: Text_widget(text: '${getTranslated(context, 'prof_sec3_text11')!}', text_size: 18),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:AppWidgetElevatedButton(height_size: 30.h, text: getTranslated(context, 'prof_sec3_text3')!, onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            child: AppWidgetElevatedButton( height_size: 30,text: getTranslated(context, 'prof_sec2_text6')!, onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                              child: AppWidgetElevatedButton(height_size: 30.h, widthRow :40.w ,text: getTranslated(context, 'prof_sec2_text9')!, onpressed: (){},
                                background_color: AppColors.BASIC_BROWN_COLOR,
                                color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                              )
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AppWidgetElevatedButton(height_size: 30.h, width_size:100.w ,text: '3', onpressed: (){},
                            background_color: AppColors.BASIC_BROWN_COLOR,
                            color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                          ),
                          SizedBox(width: 10.w,),
                          AppWidgetElevatedButton( height_size: 30,width_size:100.w ,text: getTranslated(context, 'prof_sec3_text9')!, onpressed: (){},
                            background_color: AppColors.BASIC_BROWN_COLOR,
                            color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                          ),

                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          height: 20.h,
                          child: AppWidgetElevatedButton(height_size: 10.h, width_size:40.w, text:getTranslated(context, 'prof_sec11_text1')!, onpressed: (){},
                            background_color: AppColors.GrAY_Light_Back_COLOR,
                            color_text: Colors.grey.shade500,fontSize: 8.sp,
                            value: 1,
                            widthRow: 40,
                            iconData: Icons.edit,
                            colorIcon: Colors.grey.shade500,
                            side_color: AppColors.GrAY_Light_Back_COLOR,
                            sizeIcon: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.BASIC_BROWN_COLOR,
                    endIndent: 15,
                    indent: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: Text_widget(text: '${getTranslated(context, 'prof_sec4_text1')!}', text_size: 18),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:AppWidgetElevatedButton(height_size: 30.h, text: getTranslated(context, 'prof_sec4_text2')!, onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            child: AppWidgetElevatedButton( height_size: 30,text:'11/4', onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                              child: AppWidgetElevatedButton(height_size: 30.h, widthRow :40.w ,text: getTranslated(context, 'prof_sec2_text9')!, onpressed: (){},
                                background_color: AppColors.BASIC_BROWN_COLOR,
                                color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                              )
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:AppWidgetElevatedButton(height_size: 30.h, text: getTranslated(context, 'prof_sec4_text6')!, onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            child: AppWidgetElevatedButton( height_size: 30,text:getTranslated(context, 'prof_sec2_text8')!, onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                              child: AppWidgetElevatedButton(height_size: 30.h, widthRow :40.w ,text: getTranslated(context, 'prof_sec3_text9')!, onpressed: (){},
                                background_color: AppColors.BASIC_BROWN_COLOR,
                                color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                              )
                          ),
                        ],
                      ),
                      //prof_sec2_text9
                      AppWidgetElevatedButton(height_size: 30.h, width_size:100.w ,text:  getTranslated(context, 'prof_sec4_text3')!, onpressed: (){},
                        background_color: AppColors.BASIC_BROWN_COLOR,
                        color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                      ),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          height: 20.h,
                          child: AppWidgetElevatedButton(height_size: 10.h, width_size:40.w, text:getTranslated(context, 'next')!, onpressed: (){},
                            background_color: AppColors.GrAY_Light_Back_COLOR,
                            color_text: Colors.grey.shade500,fontSize: 8.sp,
                            value: 1,
                            widthRow: 40,
                            iconData: Icons.edit,
                            colorIcon: Colors.grey.shade500,
                            side_color: AppColors.GrAY_Light_Back_COLOR,
                            sizeIcon: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.BASIC_BROWN_COLOR,
                    endIndent: 15,
                    indent: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: Text_widget(text: '${getTranslated(context, 'prof_sec5_text1')!}', text_size: 18),
                      ),
                      Row(
                        children: [
                          AppWidgetElevatedButton(height_size: 30.h, width_size:100.w ,text:getTranslated(context, 'prof_sec4_text7')!, onpressed: (){},
                            background_color: AppColors.BASIC_BROWN_COLOR,
                            color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                          ),
                          SizedBox(width: 10.w,),
                          AppWidgetElevatedButton( height_size: 30,width_size:100.w ,text: getTranslated(context, 'prof_sec2_text9')!, onpressed: (){},
                            background_color: AppColors.BASIC_BROWN_COLOR,
                            color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                          ),

                        ],
                      ),
                      //prof_sec2_text9
                      AppWidgetElevatedButton(height_size: 30.h, width_size:100.w ,text:  getTranslated(context, 'prof_sec5_text3')!, onpressed: (){},
                        background_color: AppColors.BASIC_BROWN_COLOR,
                        color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                      ),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          height: 20.h,
                          child: AppWidgetElevatedButton(height_size: 10.h, width_size:40.w, text:getTranslated(context, 'next')!, onpressed: (){},
                            background_color: AppColors.GrAY_Light_Back_COLOR,
                            color_text: Colors.grey.shade500,fontSize: 8.sp,
                            value: 1,
                            widthRow: 40,
                            iconData: Icons.edit,
                            colorIcon: Colors.grey.shade500,
                            side_color: AppColors.GrAY_Light_Back_COLOR,
                            sizeIcon: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.BASIC_BROWN_COLOR,
                    endIndent: 15,
                    indent: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: Text_widget(text: '${getTranslated(context, 'prof_sec6_text7')!}', text_size: 18),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:AppWidgetElevatedButton(height_size: 30.h, text: getTranslated(context, 'prof_sec6_text3')!, onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            child: AppWidgetElevatedButton( height_size: 30,text: getTranslated(context, 'prof_sec6_text6')!, onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                              child: AppWidgetElevatedButton(height_size: 30.h, widthRow :40.w ,text: getTranslated(context, 'prof_sec2_text9')!, onpressed: (){},
                                background_color: AppColors.BASIC_BROWN_COLOR,
                                color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                              )
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          height: 20.h,
                          child: AppWidgetElevatedButton(height_size: 10.h, width_size:40.w, text:getTranslated(context, 'prof_sec11_text1')!, onpressed: (){},
                            background_color: AppColors.GrAY_Light_Back_COLOR,
                            color_text: Colors.grey.shade500,fontSize: 8.sp,
                            value: 1,
                            widthRow: 40,
                            iconData: Icons.edit,
                            colorIcon: Colors.grey.shade500,
                            side_color: AppColors.GrAY_Light_Back_COLOR,
                            sizeIcon: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.BASIC_BROWN_COLOR,
                    endIndent: 15,
                    indent: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: Text_widget(text: '${getTranslated(context, 'prof_sec7_text7')!}', text_size: 18),
                      ),
                      Row(
                        children: [
                          AppWidgetElevatedButton(height_size: 30.h, width_size:100.w ,text:getTranslated(context, 'prof_sec7_text3')!, onpressed: (){},
                            background_color: AppColors.BASIC_BROWN_COLOR,
                            color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                          ),
                          SizedBox(width: 10.w,),
                          AppWidgetElevatedButton( height_size: 30,width_size:100.w ,text: getTranslated(context, 'prof_sec7_text6')!, onpressed: (){},
                            background_color: AppColors.BASIC_BROWN_COLOR,
                            color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                          ),

                        ],
                      ),

                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          height: 20.h,
                          child: AppWidgetElevatedButton(height_size: 10.h, width_size:40.w, text:getTranslated(context, 'next')!, onpressed: (){},
                            background_color: AppColors.GrAY_Light_Back_COLOR,
                            color_text: Colors.grey.shade500,fontSize: 8.sp,
                            value: 1,
                            widthRow: 40,
                            iconData: Icons.edit,
                            colorIcon: Colors.grey.shade500,
                            side_color: AppColors.GrAY_Light_Back_COLOR,
                            sizeIcon: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.BASIC_BROWN_COLOR,
                    endIndent: 15,
                    indent: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: Text_widget(text: '${getTranslated(context, 'prof_sec4_text2')!}', text_size: 18),
                      ),
                      Row(
                        children: [
                          AppWidgetElevatedButton(height_size: 30.h, width_size:100.w ,text:getTranslated(context, 'prof_sec7_text3')!, onpressed: (){},
                            background_color: AppColors.BASIC_BROWN_COLOR,
                            color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                          ),
                          SizedBox(width: 10.w,),
                          AppWidgetElevatedButton( height_size: 30,width_size:100.w ,text: 'BIN-47', onpressed: (){},
                            background_color: AppColors.BASIC_BROWN_COLOR,
                            color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                          ),

                        ],
                      ),

                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          height: 20.h,
                          child: AppWidgetElevatedButton(height_size: 10.h, width_size:40.w, text:getTranslated(context, 'next')!, onpressed: (){},
                            background_color: AppColors.GrAY_Light_Back_COLOR,
                            color_text: Colors.grey.shade500,fontSize: 8.sp,
                            value: 1,
                            widthRow: 40,
                            iconData: Icons.edit,
                            colorIcon: Colors.grey.shade500,
                            side_color: AppColors.GrAY_Light_Back_COLOR,
                            sizeIcon: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.BASIC_BROWN_COLOR,
                    endIndent: 15,
                    indent: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: Text_widget(text: '${getTranslated(context, 'prof_sec9_text1')!}', text_size: 18),
                      ),
                      Row(
                        children: [
                          AppWidgetElevatedButton(height_size: 30.h, width_size:100.w ,text:getTranslated(context, 'prof_sec9_text2')!, onpressed: (){},
                            background_color: AppColors.BASIC_BROWN_COLOR,
                            color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                          ),
                          SizedBox(width: 10.w,),
                          AppWidgetElevatedButton( height_size: 30,width_size:100.w ,text: getTranslated(context, 'prof_sec2_text9')!, onpressed: (){},
                            background_color: AppColors.BASIC_BROWN_COLOR,
                            color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:AppWidgetElevatedButton(height_size: 30.h, text: getTranslated(context, 'prof_sec9_text2')!, onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            child: AppWidgetElevatedButton( height_size: 30,text:'BIN-47', onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                              child: AppWidgetElevatedButton(height_size: 30.h, widthRow :40.w ,text: getTranslated(context, 'prof_sec9_text2')!, onpressed: (){},
                                background_color: AppColors.BASIC_BROWN_COLOR,
                                color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                              )
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:AppWidgetElevatedButton(height_size: 30.h, text: 'BIN-47', onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            child: AppWidgetElevatedButton( height_size: 30,text:getTranslated(context, 'prof_sec9_text2')!, onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                              child: AppWidgetElevatedButton(height_size: 30.h, widthRow :40.w ,text:'BIN-47', onpressed: (){},
                                background_color: AppColors.BASIC_BROWN_COLOR,
                                color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                              )
                          ),
                        ],
                      ),
                      //prof_sec2_text9
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          height: 20.h,
                          child: AppWidgetElevatedButton(height_size: 10.h, width_size:40.w, text:getTranslated(context, 'next')!, onpressed: (){},
                            background_color: AppColors.GrAY_Light_Back_COLOR,
                            color_text: Colors.grey.shade500,fontSize: 8.sp,
                            value: 1,
                            widthRow: 40,
                            iconData: Icons.edit,
                            colorIcon: Colors.grey.shade500,
                            side_color: AppColors.GrAY_Light_Back_COLOR,
                            sizeIcon: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.BASIC_BROWN_COLOR,
                    endIndent: 15,
                    indent: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: Text_widget(text: '${getTranslated(context, 'prof_sec10_text2')!}', text_size: 18),
                      ),
                      Row(
                        children: [
                          AppWidgetElevatedButton(height_size: 30.h, width_size:100.w ,text:getTranslated(context, 'prof_sec3_text1')!, onpressed: (){},
                            background_color: AppColors.BASIC_BROWN_COLOR,
                            color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                          ),
                          SizedBox(width: 10.w,),
                          AppWidgetElevatedButton( height_size: 30,width_size:100.w ,text: getTranslated(context, 'prof_sec4_text11')!, onpressed: (){},
                            background_color: AppColors.BASIC_BROWN_COLOR,
                            color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:AppWidgetElevatedButton(height_size: 30.h, text: getTranslated(context, 'prof_sec6_text7')!, onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            child: AppWidgetElevatedButton( height_size: 30,text:getTranslated(context, 'prof_sec5_text5')!, onpressed: (){},
                              background_color: AppColors.BASIC_BROWN_COLOR,
                              color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                              child: AppWidgetElevatedButton(height_size: 30.h, widthRow :40.w ,text: getTranslated(context, 'prof_sec10_text1')!, onpressed: (){},
                                background_color: AppColors.BASIC_BROWN_COLOR,
                                color_text: Colors.black,border_size: 15.r,fontSize: 14.sp,
                              )
                          ),
                        ],
                      ),
                      //prof_sec2_text9
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          height: 20.h,
                          child: AppWidgetElevatedButton(height_size: 10.h, width_size:40.w, text:getTranslated(context, 'next')!, onpressed: (){},
                            background_color: AppColors.GrAY_Light_Back_COLOR,
                            color_text: Colors.grey.shade500,fontSize: 8.sp,
                            value: 1,
                            widthRow: 40,
                            iconData: Icons.edit,
                            colorIcon: Colors.grey.shade500,
                            side_color: AppColors.GrAY_Light_Back_COLOR,
                            sizeIcon: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.BASIC_BROWN_COLOR,
                    endIndent: 15,
                    indent: 15,
                  ),
                  SizedBox(
                    width: 90.w,
                    height: 40.h,
                    child: ListTile(
                      onTap: (){
                        Navigator.pushNamed(context, '/prof_dress12');
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
                        padding: const EdgeInsetsDirectional.only(start: 230),
                        child: Text_widget(textAlign: TextAlign.start,text_size: 8.sp, text: getTranslated(context, 'prof_sec11_text2'),),
                      )),
                  Center(child: Image.asset('images/group11.png'), ),
                  SizedBox(height: 20.h,),


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




