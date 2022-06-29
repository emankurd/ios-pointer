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
class Profetional_dress10 extends StatefulWidget {
  const Profetional_dress10({Key? key}) : super(key: key);

  @override
  _Profetional_dress10State createState() => _Profetional_dress10State();
}

class _Profetional_dress10State extends State<Profetional_dress10> {

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                     //   crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CardProf(text:getTranslated(context, 'prof_sec3_text1'),borderColor: AppColors.BASIC_BROWN_COLOR, textColor: AppColors.BASIC_BROWN_COLOR,) ,
                         // SizedBox(width: 3.w,),
                          CardProf(text:getTranslated(context, 'prof_sec4_text11'),),
                       //   SizedBox(width: 3.w,),
                          CardProf(text:getTranslated(context, 'prof_sec6_text7'),),
                         // SizedBox(width: 3.w,),
                          CardProf(text:getTranslated(context, 'prof_sec5_text5'),),
                          CardProf(text:getTranslated(context, 'prof_sec10_text1'),),

                          //  SizedBox(width: 3.w,),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Text_widget(textAlign: TextAlign.start, text: getTranslated(context, 'prof_sec10_text2')!, text_size: 18),

                    ],
                  ),
                  SizedBox(height: 15.h,),

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
                  SizedBox(height: 15.h,),
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
                        Navigator.pushNamed(context, '/prof_dress11');
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
                        padding: const EdgeInsetsDirectional.only(start: 220),
                        child: Text_widget(textAlign: TextAlign.start,text_size: 8.sp, text: getTranslated(context, 'prof_sec10_text3'),),
                      )),
                  Center(child: Image.asset('images/group10.png'), ),
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




