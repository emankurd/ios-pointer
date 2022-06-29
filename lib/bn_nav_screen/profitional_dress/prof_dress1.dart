import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress2.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/shared_pref/shared_pref_language.dart';
import 'package:ios_pentor/side_menue/cart_screen.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
class Profetional_dress1 extends StatefulWidget {
  const Profetional_dress1({Key? key}) : super(key: key);

  @override
  _Profetional_dress1State createState() => _Profetional_dress1State();
}

class _Profetional_dress1State extends State<Profetional_dress1> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    print(AppPrefController().languageCode);
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
                  AppWidgetElevatedButton(text: getTranslated(context, 'prof_text2')!, onpressed: (){
                    Navigator.pushNamed(context, '/prof_dress2');

                  },
                  background_color: AppColors.GrAY_Light_Back_COLOR,
                    color_text: Colors.black,border_size: 15.r,
                  ),
                  SizedBox(height: 20.h,),
                  AppWidgetElevatedButton(text: getTranslated(context, 'prof_text3')!, onpressed: (){
                    Navigator.pushNamed(context, '/prof_dress2');

                  },
                    background_color: AppColors.GrAY_Light_Back_COLOR,
                    color_text: Colors.black,border_size: 15.r,
                  ),
                  SizedBox(height: 20.h,),
                  AppWidgetElevatedButton(text: getTranslated(context, 'prof_text4')!, onpressed: (){
                    Navigator.pushNamed(context, '/prof_dress2');

                  },
                    background_color: AppColors.GrAY_Light_Back_COLOR,
                    color_text: Colors.black,border_size: 15.r,
                  ),
                  SizedBox(height: 20.h,),
                  AppWidgetElevatedButton(text: getTranslated(context, 'prof_text5')!, onpressed: (){
                    Navigator.pushNamed(context, '/prof_dress2');

                  },
                    background_color: AppColors.GrAY_Light_Back_COLOR,
                    color_text: Colors.black,border_size: 15.r,
                  ),
                  SizedBox(height: 30.h,),
                  SizedBox(
                    width: 90.w,
                    height: 40.h,
                    child: ListTile(
                      onTap: (){
                        Navigator.pushNamed(context, '/prof_dress2');

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
                        padding: const EdgeInsetsDirectional.only(start: 30),
                        child: Text_widget(textAlign: TextAlign.start,text_size: 8.sp, text: getTranslated(context, 'prof_text6')!,),
                      )),
                  Center(child: AppPrefController().languageCode == 'en' ? Image.asset('images/group1.png'): Image.asset('images/group13.png'), ),

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
