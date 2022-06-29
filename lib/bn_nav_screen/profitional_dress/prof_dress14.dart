import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress2.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/side_menue/cart_screen.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/widgets/card_row_widget.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
class Profetional_dress14 extends StatefulWidget {
  const Profetional_dress14({Key? key}) : super(key: key);

  @override
  _Profetional_dress14State createState() => _Profetional_dress14State();
}

class _Profetional_dress14State extends State<Profetional_dress14> {

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
        title: Text_widget(text_size: 16,text: getTranslated(context, 'prof_text1')! ,text_color: Colors.white,fontWeight: FontWeight.w400,),

        centerTitle: true,
        actionsIconTheme: IconThemeData(
          size: 25.r,
        ),
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
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/design_prof_dress.png',fit: BoxFit.fill,
              width: double.infinity,
              height:300.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30 ,vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CardRowWidget(text_field: getTranslated(context, 'prof_sec14_text1')!,color_field: AppColors.BASIC_BROWN_COLOR,hint_color: Colors.grey,text_hint: getTranslated(context, 'prof_sec14_text1')!,),
                  SizedBox(height: 150.h,),
                  Center(child: AppWidgetElevatedButton(
                    value: 1,
                    height_size: 40.h,
                    width_size:150.w,text: getTranslated(context, 'prof_sec14_text3')!, onpressed: (){} , color_text: Colors.black, background_color: AppColors.BASIC_BROWN_COLOR,fontSize: 14,)
                  ),
                  SizedBox(height: 30.h,),
                  Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(start: 300),
                        child: Text_widget(textAlign: TextAlign.start,text_size: 8.sp, text: getTranslated(context, 'prof_sec14_text2')!,),
                      )),
                  Center(child: Image.asset('images/group14.png'), ),

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
