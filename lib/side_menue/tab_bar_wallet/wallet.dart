import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_field_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.GrAY_Light_Back_COLOR,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30.h,),
              Text_widget(text: '1000 \n ${getTranslated(context, 'sr')!}', text_size: 60.sp , text_color: AppColors.Green_COLOR,),
              SizedBox(height: 80.h,),
              AppWidgetElevatedButton(border_size:5, text: getTranslated(context, 'wallet_text1')!, onpressed: (){
                showAlertDialog(context);
                // Navigator.pushNamed(context, '/protofile_screen',arguments: {
                //   'value' :0 ,
                // });

              },
              color_text: AppColors.Green_COLOR,
                background_color: Colors.transparent,
                side_color: AppColors.Green_COLOR,
              )
            ],
          ),
        ),
      ),
    );
  }
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      titlePadding: EdgeInsets.only(top: 20),
      title: Text_widget(text: getTranslated(context , 'card_text1')!, text_size: 20.sp, textAlign: TextAlign.center,text_color: AppColors.GrAY_DRAWER_COLOR,),
      content: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 400.w,
              padding: EdgeInsets.symmetric(horizontal: 10 , vertical:4),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(5.0.r),
                  border: Border.all(
                      color: AppColors.BASIC_BROWN_COLOR, style: BorderStyle.solid, width: 0.80),
                ),

                child: SizedBox(
                    height: 45.h,
                    child: DropdownButton<String>(
                      hint: Text_widget(text: getTranslated(context, 'wallet_text2')!,text_size: 14.sp,text_color: AppColors.BASIC_BROWN_COLOR,),
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down , color: AppColors.GrAY_DRAWER_COLOR, ),
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
              Text_widget(text:getTranslated(context, 'wallet_text3')!, text_size: 16.sp , text_color: AppColors.GrAY_DRAWER_COLOR,),
              TextFieldWidget(textInputType: TextInputType.number , label_text: '00', hint_size: 12.sp, label_size: 12.sp,color_font: AppColors.BASIC_BROWN_COLOR,),
              SizedBox(height: 25.h,),

              AppWidgetElevatedButton(text: getTranslated(context, 'conformation')!, onpressed: (){
                Navigator.pop(context);
              },
                color_text: Colors.black,
                background_color: AppColors.BASIC_BROWN_COLOR,

              )
            ],
          ),
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
