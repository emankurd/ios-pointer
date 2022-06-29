import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_field_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FatherProfileScreen extends StatefulWidget {
  const FatherProfileScreen({Key? key}) : super(key: key);

  @override
  _FatherProfileScreenState createState() => _FatherProfileScreenState();
}

class _FatherProfileScreenState extends State<FatherProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.GrAY_Light_Back_COLOR,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text_widget(text: getTranslated(context, 'father_text1')!, text_size: 16.sp , text_color: AppColors.GrAY_DRAWER_COLOR,textAlign: TextAlign.start),
              SizedBox(height: 3.h,),
              CardProfile(text: getTranslated(context, 'father_text1')!,),
            //  TextFieldWidget(label_text: getTranslated(context, 'father_text1')!, hint_size: 12.sp, label_size: 12.sp,color_font: AppColors.BASIC_BROWN_COLOR,),
              SizedBox(height: 20.h,),
              Text_widget(text: getTranslated(context, 'father_text2')!, text_size: 16.sp , text_color: AppColors.GrAY_DRAWER_COLOR,textAlign: TextAlign.start),
              SizedBox(height: 3.h,),
              CardProfile(text:'00'),
              SizedBox(height: 20.h,),
              Text_widget(text: getTranslated(context, 'signup_text3')!, text_size: 16.sp , text_color: AppColors.GrAY_DRAWER_COLOR,textAlign: TextAlign.start),
              SizedBox(height: 3.h,),
              CardProfile(text: getTranslated(context, 'signup_text3')!,),
              SizedBox(height: 20.h,),
              Text_widget(text: getTranslated(context, 'signup_text1')!, text_size: 16.sp , text_color: AppColors.GrAY_DRAWER_COLOR,textAlign: TextAlign.start),
              SizedBox(height: 3.h,),
              CardProfile(text:  '00',),
              SizedBox(height: 20.h,),
              Text_widget(text: getTranslated(context, 'father_text3')!, text_size: 16.sp , text_color: AppColors.GrAY_DRAWER_COLOR,),
              SizedBox(height: 3.h,),
              CardProfile(text: getTranslated(context, 'father_text3')!,),
              SizedBox(height: 25.h,),
               AppWidgetElevatedButton(text: getTranslated(context, 'father_text4')!, onpressed: (){
                 Navigator.pushNamed(context, '/profile_edit');
               }, background_color: AppColors.BASIC_BROWN_COLOR, color_text: Colors.black,border_size: 5,),
              SizedBox(height: 25.h,),


            ],
          ),
        ),
      ),

    );
  }
}

class CardProfile extends StatelessWidget {

  String? text;
  CardProfile({this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.GrAY_Light_Back_COLOR,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
          side: BorderSide(
            color: AppColors.BASIC_BROWN_COLOR,
            width: 1,
          )
        ),
        child: SizedBox(
            width: double.infinity,
            height: 50.h,
            child: Center(child: Text_widget(textAlign: TextAlign.start, text: text, text_size: 12.sp, ))));
  }
}
