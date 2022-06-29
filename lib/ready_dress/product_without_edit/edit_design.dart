import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_field_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditDesign extends StatefulWidget {
  const EditDesign({Key? key}) : super(key: key);

  @override
  _EditDesignState createState() => _EditDesignState();
}

class _EditDesignState extends State<EditDesign> {

  Color color_border_selected_button=AppColors.BASIC_BROWN_COLOR;
  Color color_border_unselected_button=Colors.grey.shade400;
  Color color_text_selected_button=Colors.black;
  bool is_selected_button=false;
  bool is_selected_button2=false;
  bool is_selected_button3=false;
  bool is_selected_button4=false;
  bool is_selected_button5=false;
  bool is_selected_button6=false;

  bool is_selected_button7=false;
  bool is_selected_button8=false;
  bool is_selected_button9=false;
  bool is_selected_button10=false;
  bool is_selected_button11=false;
  bool is_selected_button12=false;

  bool is_selected_button13=false;
  bool is_selected_button14=false;
  bool is_selected_button15=false;
  bool is_selected_button16=false;
  bool is_selected_button17=false;
  bool is_selected_button18=false;

  bool is_selected_button19=false;
  bool is_selected_button20=false;
  bool is_selected_button21=false;
  bool is_selected_button22=false;
  bool is_selected_button23=false;
  bool is_selected_button24=false;

  bool is_selected_button25=false;
  bool is_selected_button26=false;

  bool is_selected_button27=false;
  bool is_selected_button28=false;
  bool is_selected_button29=false;
  bool is_selected_button30=false;

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
              Text_widget(textAlign:TextAlign.start, text: 'Alyaqa : ', text_size: 14,text_color: Colors.black,),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button=true;
                            is_selected_button2=false;
                            is_selected_button3=false;
                            is_selected_button4=false;

                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                    width: 1,
                                  color: is_selected_button ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Masters',text_size: 14.sp, text_color: is_selected_button ? color_text_selected_button : color_border_unselected_button,))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button2=true;
                            is_selected_button=false;
                            is_selected_button3=false;
                            is_selected_button4=false;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                    width: 1,
                                  color: is_selected_button2 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'tipper',text_size: 14.sp,text_color:is_selected_button2 ? color_text_selected_button : color_border_unselected_button,
                                ))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button3=true;
                            is_selected_button=false;
                            is_selected_button2=false;
                            is_selected_button4=false;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                    width: 1,
                                  color: is_selected_button3 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Chinese',text_size: 14.sp,text_color:is_selected_button3 ? color_text_selected_button : color_border_unselected_button))
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              SizedBox(
                height: 50.h,
                width: 140.w,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      is_selected_button4=true;
                      is_selected_button2=false;
                      is_selected_button3=false;
                      is_selected_button=false;
                    });
                  },
                  child: Card(
                      elevation: 0,
                      color: AppColors.GrAY_Light_Back_COLOR,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(
                              width: 1,
                            color: is_selected_button4 ? color_border_selected_button : color_border_unselected_button,
                          )
                      ),
                      child: Align(
                          alignment: AlignmentDirectional.center,
                          child: Text_widget(text: 'Neck combination',text_size: 14.sp,text_color: is_selected_button4 ? color_text_selected_button : color_border_unselected_button))
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Text_widget(textAlign:TextAlign.start, text: 'Sleeves : ', text_size: 14,text_color: Colors.black,),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button5=true;
                            is_selected_button6=false;


                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button5 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Masters',text_size: 14.sp, text_color: is_selected_button5 ? color_text_selected_button : color_border_unselected_button,))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button6=true;
                            is_selected_button5=false;

                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button6 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'tipper',text_size: 14.sp,text_color:is_selected_button6 ? color_text_selected_button : color_border_unselected_button,
                                ))
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 20.h,),
              Text_widget(textAlign:TextAlign.start, text: 'Item shape: ', text_size: 14,text_color: Colors.black,),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button7=true;
                            is_selected_button8=false;
                            is_selected_button9=false;
                            is_selected_button10=false;
                            is_selected_button11=false;
                            is_selected_button12=false;

                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button7 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Masters',text_size: 14.sp, text_color: is_selected_button7 ? color_text_selected_button : color_border_unselected_button,))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button7=false;
                            is_selected_button8=true;
                            is_selected_button9=false;
                            is_selected_button10=false;
                            is_selected_button11=false;
                            is_selected_button12=false;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button8 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'tipper',text_size: 14.sp,text_color:is_selected_button8 ? color_text_selected_button : color_border_unselected_button,
                                ))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button7=false;
                            is_selected_button8=false;
                            is_selected_button9=true;
                            is_selected_button10=false;
                            is_selected_button11=false;
                            is_selected_button12=false;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button9 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Chinese',text_size: 14.sp,text_color:is_selected_button9 ? color_text_selected_button : color_border_unselected_button))
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button7=false;
                            is_selected_button8=false;
                            is_selected_button9=false;
                            is_selected_button10=true;
                            is_selected_button11=false;
                            is_selected_button12=false;

                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button10 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Masters',text_size: 14.sp, text_color: is_selected_button10 ? color_text_selected_button : color_border_unselected_button,))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button7=false;
                            is_selected_button8=false;
                            is_selected_button9=false;
                            is_selected_button10=false;
                            is_selected_button11=true;
                            is_selected_button12=false;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button11 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'tipper',text_size: 14.sp,text_color:is_selected_button11 ? color_text_selected_button : color_border_unselected_button,
                                ))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button7=false;
                            is_selected_button8=false;
                            is_selected_button9=false;
                            is_selected_button10=false;
                            is_selected_button11=false;
                            is_selected_button12=true;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button12 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Chinese',text_size: 14.sp,text_color:is_selected_button12 ? color_text_selected_button : color_border_unselected_button))
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              Text_widget(textAlign:TextAlign.start, text: 'Bar show: ', text_size: 14,text_color: Colors.black,),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button13=true;
                            is_selected_button14=false;
                            is_selected_button15=false;
                            is_selected_button16=false;
                            is_selected_button17=false;
                            is_selected_button18=false;

                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button13 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Masters',text_size: 14.sp, text_color: is_selected_button13 ? color_text_selected_button : color_border_unselected_button,))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button13=false;
                            is_selected_button14=true;
                            is_selected_button15=false;
                            is_selected_button16=false;
                            is_selected_button17=false;
                            is_selected_button18=false;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button14 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'tipper',text_size: 14.sp,text_color:is_selected_button14 ? color_text_selected_button : color_border_unselected_button,
                                ))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button13=false;
                            is_selected_button14=false;
                            is_selected_button15=true;
                            is_selected_button16=false;
                            is_selected_button17=false;
                            is_selected_button18=false;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button15 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Chinese',text_size: 14.sp,text_color:is_selected_button15 ? color_text_selected_button : color_border_unselected_button))
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button13=false;
                            is_selected_button14=false;
                            is_selected_button15=false;
                            is_selected_button16=true;
                            is_selected_button17=false;
                            is_selected_button18=false;

                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button16 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Masters',text_size: 14.sp, text_color: is_selected_button16 ? color_text_selected_button : color_border_unselected_button,))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button13=false;
                            is_selected_button14=false;
                            is_selected_button15=false;
                            is_selected_button16=false;
                            is_selected_button17=true;
                            is_selected_button18=false;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button17 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'tipper',text_size: 14.sp,text_color:is_selected_button17 ? color_text_selected_button : color_border_unselected_button,
                                ))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button13=false;
                            is_selected_button14=false;
                            is_selected_button15=false;
                            is_selected_button16=false;
                            is_selected_button17=false;
                            is_selected_button18=true;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button18 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Chinese',text_size: 14.sp,text_color:is_selected_button18 ? color_text_selected_button : color_border_unselected_button))
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              Text_widget(textAlign:TextAlign.start, text: 'Item type: ', text_size: 14,text_color: Colors.black,),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button19=true;
                            is_selected_button20=false;
                            is_selected_button21=false;
                            is_selected_button22=false;
                            is_selected_button23=false;
                            is_selected_button24=false;

                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button19 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Masters',text_size: 14.sp, text_color: is_selected_button19 ? color_text_selected_button : color_border_unselected_button,))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                           is_selected_button19=false;
                           is_selected_button20=true;
                           is_selected_button21=false;
                           is_selected_button22=false;
                           is_selected_button23=false;
                           is_selected_button24=false;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button20 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'tipper',text_size: 14.sp,text_color:is_selected_button20 ? color_text_selected_button : color_border_unselected_button,
                                ))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button19=false;
                            is_selected_button20=false;
                            is_selected_button21=true;
                            is_selected_button22=false;
                            is_selected_button23=false;
                            is_selected_button24=false;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button21 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Chinese',text_size: 14.sp,text_color:is_selected_button21 ? color_text_selected_button : color_border_unselected_button))
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                          is_selected_button19=false;
                          is_selected_button20=false;
                          is_selected_button21=false;
                          is_selected_button22=true;
                          is_selected_button23=false;
                          is_selected_button24=false;

                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button22 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Masters',text_size: 14.sp, text_color: is_selected_button22 ? color_text_selected_button : color_border_unselected_button,))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button19=false;
                            is_selected_button20=false;
                            is_selected_button21=false;
                            is_selected_button22=false;
                            is_selected_button23=true;
                            is_selected_button24=false;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button23 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'tipper',text_size: 14.sp,text_color:is_selected_button23 ? color_text_selected_button : color_border_unselected_button,
                                ))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button19=false;
                            is_selected_button20=false;
                            is_selected_button21=false;
                            is_selected_button22=false;
                            is_selected_button23=false;
                            is_selected_button24=true;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button24 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Chinese',text_size: 14.sp,text_color:is_selected_button24 ? color_text_selected_button : color_border_unselected_button))
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              Text_widget(textAlign:TextAlign.start, text: 'Pen pocket: ', text_size: 14,text_color: Colors.black,),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button25=true;
                            is_selected_button26=false;


                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button25 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'YES',text_size: 14.sp, text_color: is_selected_button25 ? color_text_selected_button : color_border_unselected_button,))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button26=true;
                            is_selected_button25=false;

                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button26 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'NO',text_size: 14.sp,text_color:is_selected_button26 ? color_text_selected_button : color_border_unselected_button,
                                ))
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 20.h,),
              Text_widget(textAlign:TextAlign.start, text: 'Mobile pocket: ', text_size: 14,text_color: Colors.black,),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button27=true;
                            is_selected_button28=false;
                            is_selected_button29=false;
                            is_selected_button30=false;

                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button27 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Masters',text_size: 14.sp, text_color: is_selected_button27 ? color_text_selected_button : color_border_unselected_button,))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button27=false;
                            is_selected_button28=true;
                            is_selected_button29=false;
                            is_selected_button30=false;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button28 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'tipper',text_size: 14.sp,text_color:is_selected_button28 ? color_text_selected_button : color_border_unselected_button,
                                ))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            is_selected_button27=false;
                            is_selected_button28=false;
                            is_selected_button29=true;
                            is_selected_button30=false;
                          });
                        },
                        child: Card(
                            elevation: 0,
                            color: AppColors.GrAY_Light_Back_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                  width: 1,
                                  color: is_selected_button29 ? color_border_selected_button : color_border_unselected_button,
                                )
                            ),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text_widget(text: 'Chinese',text_size: 14.sp,text_color:is_selected_button29 ? color_text_selected_button : color_border_unselected_button))
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              SizedBox(
                height: 50.h,
                width: 140.w,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      is_selected_button27=false;
                      is_selected_button28=false;
                      is_selected_button29=false;
                      is_selected_button30=true;
                    });
                  },
                  child: Card(
                      elevation: 0,
                      color: AppColors.GrAY_Light_Back_COLOR,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(
                            width: 1,
                            color: is_selected_button30 ? color_border_selected_button : color_border_unselected_button,
                          )
                      ),
                      child: Align(
                          alignment: AlignmentDirectional.center,
                          child: Text_widget(text: 'Neck combination',text_size: 14.sp,text_color: is_selected_button30 ? color_text_selected_button : color_border_unselected_button))
                  ),
                ),
              ),
              SizedBox(height: 25.h,),
              Center(
                child: AppWidgetElevatedButton(
                  fontSize: 15.sp,
                  height_size: 45.h,
                  width_size: 60.w , text: getTranslated(context, 'conformation')!, onpressed: (){
                    Navigator.pop(context);
                }, background_color: AppColors.BASIC_BROWN_COLOR, color_text: Colors.black,border_size: 5,),
              ),
              SizedBox(height: 25.h,),


            ],
          ),
        ),
      ),

    );
  }
}
