import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/card_row_widget.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
class CardDetails extends StatefulWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  _CardDetailsState createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.GrAY_Light_Back_COLOR,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
        child: SingleChildScrollView(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                leading: Image.asset('images/mastercard.png' ),
                title: Column(
                  children: [
                    Text_widget(text: getTranslated(context, 'card_details_text1')!, text_size: 11.sp),
                    SizedBox(height: 3.h,),
                    Row(
                     children: [
                       Text_widget(text: getTranslated(context, 'card_details_text2')!, text_size: 11.sp),
                       SizedBox(width: 5.h,),
                       Text_widget(text: '5/2025', text_size: 11.sp),
                       Spacer(),
                       Text_widget(text:getTranslated(context, 'card_details_text3')!, text_size: 11.sp),
                     ],
                   )

                  ],
                ),
                trailing: Image.asset('images/deletesweep.png' ),


              ),
              Divider(
                height: 0.5,
                color: AppColors.BASIC_BROWN_COLOR,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 25,),
              ListTile(
                leading: Image.asset('images/master_grey.png' ),
                title: Column(
                  children: [
                    Text_widget(text:getTranslated(context, 'card_details_text1')!, text_size:  11.sp, text_color: AppColors.GrAY_DRAWER_COLOR,),
                    SizedBox(height: 3.h,),
                    Row(
                      children: [
                        Text_widget(text:getTranslated(context, 'card_details_text2')!, text_size: 11.sp,text_color: AppColors.GrAY_DRAWER_COLOR,),
                        SizedBox(width: 5.w,),
                        Text_widget(text: '5/2025', text_size:  11.sp,text_color: AppColors.GrAY_DRAWER_COLOR,),
                        Spacer(),
                        Text_widget(text:getTranslated(context, 'card_details_text3')!, text_size:  11.sp,text_color: AppColors.GrAY_DRAWER_COLOR,),
                      ],
                    )


                  ],
                ),
                trailing: Image.asset('images/delete_gray.png' ,),


              ),
              Divider(
                height: 0.5,
                color: AppColors.GrAY_DRAWER_COLOR,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 25.h,),
              ListTile(
                leading: Image.asset('images/master_grey.png' ),
                title: Column(
                  children: [
                    Text_widget(text: getTranslated(context, 'card_details_text1')!, text_size: 11.sp, text_color: AppColors.GrAY_DRAWER_COLOR,),
                    SizedBox(height: 3.h,),
                    Row(
                      children: [
                        Text_widget(text: getTranslated(context, 'card_details_text2')!, text_size: 11.sp,text_color: AppColors.GrAY_DRAWER_COLOR,),
                        SizedBox(width: 5.w,),
                        Text_widget(text: '5/2025', text_size: 11.sp,text_color: AppColors.GrAY_DRAWER_COLOR,),
                        Spacer(),
                        Text_widget(text: getTranslated(context, 'card_details_text3')!, text_size: 11.sp,text_color: AppColors.GrAY_DRAWER_COLOR,),
                      ],
                    )


                  ],
                ),
                trailing: Image.asset('images/delete_gray.png' ,),


              ),
              Divider(
                height: 0.5,
                color: AppColors.GrAY_DRAWER_COLOR,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 25.h,),
              ListTile(
                leading: Image.asset('images/master_grey.png' ),
                title: Column(
                  children: [
                    Text_widget(text: getTranslated(context, 'card_details_text1')!, text_size: 11.sp, text_color: AppColors.GrAY_DRAWER_COLOR,),
                    SizedBox(height: 3.h,),
                    Row(
                      children: [
                        Text_widget(text: getTranslated(context, 'card_details_text2')!, text_size: 11.sp,text_color: AppColors.GrAY_DRAWER_COLOR,),
                        SizedBox(width: 5.w,),
                        Text_widget(text: '5/2025', text_size: 11.sp,text_color: AppColors.GrAY_DRAWER_COLOR,),
                        Spacer(),
                        Text_widget(text:getTranslated(context, 'card_details_text3')!, text_size: 11.sp,text_color: AppColors.GrAY_DRAWER_COLOR,),
                      ],
                    )


                  ],
                ),
                trailing: Image.asset('images/delete_gray.png' ,),


              ),
              Divider(
                height: 0.5,
                color: AppColors.GrAY_DRAWER_COLOR,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 30.h,),

              InkWell(
                onTap: (){
                  showAlertDialog(context);
                  // Card_proto_Screen();
                },
                child: SizedBox(
                  width: 70.w,
                  height: 60.h,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1.w,
                              color: AppColors.Green_COLOR
                          )
                      ),
                      elevation: 0,
                      color: AppColors.GrAY_Light_Back_COLOR,
                      clipBehavior: Clip.antiAlias,
                      child: Center(child: Text_widget(textAlign: TextAlign.start, text: '+', text_size: 40.sp,text_color:AppColors.Green_COLOR, ))),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      titlePadding: EdgeInsets.only(top: 30),
      title: Text_widget(text: getTranslated(context, 'card_details_text4')!, text_size: 20.sp , textAlign: TextAlign.center,text_color: AppColors.GrAY_DRAWER_COLOR,),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardRowWidget(text_field: getTranslated(context, 'card_text2')!,text_hint: '0500000000',color_field: Colors.black,hint_color: AppColors.BASIC_BROWN_COLOR,),
            SizedBox(height: 15.h,),
            CardRowWidget(text_field: getTranslated(context, 'card_text2')!,text_hint: 'named on card',color_field: Colors.black,hint_color: AppColors.BASIC_BROWN_COLOR,),
            SizedBox(height: 15.h,),
            SizedBox(
              height: 50.h,
              child: Row(
                children: [
                  Expanded(child: CardRowWidget(text_field: 'CVV',text_hint: '000',color_field: Colors.black,hint_color: AppColors.BASIC_BROWN_COLOR,)),
                  SizedBox(width: 10.w,),
                  Expanded(
                    child: ListTile(
                      horizontalTitleGap: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          side: BorderSide(
                              width: 0.80,
                              color: AppColors.BASIC_BROWN_COLOR
                          )
                      ),
                      title: Text_widget(text: '5,may,2020', text_size: 14.sp, text_color: Colors.black,),
                      trailing: IconButton(
                        onPressed: (){
                          _pickDateDialog();
                        },
                        icon: Icon(Icons.date_range , color: AppColors.BASIC_BROWN_COLOR,),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 25.h,),

            AppWidgetElevatedButton(text: getTranslated(context, 'card_text4')!, onpressed: (){
              Navigator.pop(context);
            },
              color_text: Colors.black,
              background_color: AppColors.BASIC_BROWN_COLOR,

            )
          ],
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

  void _pickDateDialog() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        //which date will display when user open the picker
        firstDate: DateTime(1950),
        //what will be the previous supported year in picker
        lastDate: DateTime
            .now()) //what will be the up to supported date in picker
        .then((pickedDate) {
      //then usually do the future job
      if (pickedDate == null) {
        //if user tap cancel then this function will stop
        return;
      }
      setState(() {
        //for rebuilding the ui
        //_selectedDate = pickedDate;
        //  dob= DateFormat.yMd().format(_selectedDate!);
        // String y= DateFormat.y().format(_selectedDate!);
        // String m= DateFormat.m().format(_selectedDate!);
        // String d= DateFormat.d().format(_selectedDate!);
        //
        // print('dob: ${dob} , y: $y , m: $m , d: $d');
        // dob = DateFormat.yMMMd().format(_selectedDate!);
      });
    });
  }
}
