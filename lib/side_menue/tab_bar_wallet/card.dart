import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/card_row_widget.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
class Card_proto_Screen extends StatefulWidget {
  const Card_proto_Screen({Key? key}) : super(key: key);

  @override
  _Card_proto_ScreenState createState() => _Card_proto_ScreenState();
}

class _Card_proto_ScreenState extends State<Card_proto_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.GrAY_Light_Back_COLOR,
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text_widget(text:getTranslated(context, 'card_text1')!, text_size: 20.sp , textAlign: TextAlign.center,text_color: AppColors.GrAY_DRAWER_COLOR,),
              SizedBox(height: 20.h,),
              CardRowWidget(text_field: getTranslated(context, 'card_text2')!,text_hint: '0500000000',),
              SizedBox(height: 20.h,),
              CardRowWidget(text_field: getTranslated(context, 'card_text3')!,text_hint: 'named on card',),

              AppWidgetElevatedButton(text:getTranslated(context, 'card_text4')!, onpressed: (){
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
  }
}
