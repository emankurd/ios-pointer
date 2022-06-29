
import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedSizeScreen extends StatefulWidget {
  const SavedSizeScreen({Key? key}) : super(key: key);

  @override
  _SavedSizeScreenState createState() => _SavedSizeScreenState();
}

class _SavedSizeScreenState extends State<SavedSizeScreen> {
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
          title: Text_widget(text_size: 16,text: getTranslated(context, 'prof_sec13_text1')! ,text_color: Colors.white,fontWeight: FontWeight.w400,),
        centerTitle: true,
        actionsIconTheme: IconThemeData(
          size: 25.r,
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

      ),

      body: ListView.builder(
        padding:EdgeInsets.symmetric(horizontal: 23 , vertical: 38),
          itemCount: 3,
          itemBuilder: (context , index){

          if(index == 0){
            return Container(
              margin: EdgeInsetsDirectional.only(bottom: 20),
              width: 380,
              height:150,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 3,
                child: Row(
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/man_card_home2.png',
                      fit: BoxFit.cover,
                      width: 100.w,
                      height: 140.h,
                    ),
                    Padding(
                      padding:  EdgeInsetsDirectional.only(start: 10 , top: 10 , bottom: 10),
                      child: Row(
                        //      physics: NeverScrollableScrollPhysics(),
                        // mainAxisSize: MainAxisSize.max,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text_widget(text: getTranslated(context, 'saved_sizes_text1')!, text_size: 12.sp , text_color: Colors.black,),
                              AppWidgetElevatedButton(
                                  height_size: 20.h,
                                  width_size: 35.w,
                                  fontSize: 8.sp,
                                  background_color: Colors.white,
                                  color_text: Colors.black,
                                  text:getTranslated(context, 'prof_sec11_text1')!, onpressed: (){

                              })
                            ],
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text_widget(text: getTranslated(context, 'saved_sizes_text3')!, text_size: 12.sp, text_color: Colors.black,),
                              Row(
                                children: [
                                  SizedBox(
                                      width:28.w,
                                      child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                  //  Spacer(),
                                  Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(0),
                                          side: BorderSide(
                                            width: 1,
                                            color:  AppColors.BASIC_BROWN_COLOR,
                                          )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                      )),
                                  SizedBox(
                                      width:28.w,
                                      child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                  //  Spacer(),
                                  Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(0),
                                          side: BorderSide(
                                            width: 1,
                                            color:  AppColors.BASIC_BROWN_COLOR,
                                          )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                      width:28.w,
                                      child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                  //  Spacer(),
                                  Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(0),
                                          side: BorderSide(
                                            width: 1,
                                            color:  AppColors.BASIC_BROWN_COLOR,
                                          )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                      )),
                                  SizedBox(
                                      width:28.w,
                                      child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                  //  Spacer(),
                                  Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(0),
                                          side: BorderSide(
                                            width: 1,
                                            color:  AppColors.BASIC_BROWN_COLOR,
                                          )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                      width:28.w,
                                      child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                  //  Spacer(),
                                  Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(0),
                                          side: BorderSide(
                                            width: 1,
                                            color:  AppColors.BASIC_BROWN_COLOR,
                                          )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                      )),
                                  SizedBox(
                                      width:28.w,
                                      child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                  //  Spacer(),
                                  Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(0),
                                          side: BorderSide(
                                            width: 1,
                                            color:  AppColors.BASIC_BROWN_COLOR,
                                          )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                      width:28.w,
                                      child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                  //  Spacer(),
                                  Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(0),
                                          side: BorderSide(
                                            width: 1,
                                            color:  AppColors.BASIC_BROWN_COLOR,
                                          )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                      )),
                                  SizedBox(
                                      width:28.w,
                                      child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                  //  Spacer(),
                                  Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(0),
                                          side: BorderSide(
                                            width: 1,
                                            color:  AppColors.BASIC_BROWN_COLOR,
                                          )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                      )),
                                ],
                              ),
                              // SizedBox(
                              //   height: 150,
                              //   width: 100,
                              //   child: GridView.builder(
                              //
                              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              //       crossAxisCount: 2
                              //     ),
                              //     itemBuilder: (context , index){
                              //       return  SizedBox(
                              //         height: 10.h,
                              //         child: Row(
                              //           children: [
                              //             SizedBox(
                              //                 width:28.w,
                              //                 child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                              //             //  Spacer(),
                              //             Card(
                              //                 shape: RoundedRectangleBorder(
                              //                     borderRadius: BorderRadius.circular(0),
                              //                     side: BorderSide(
                              //                       width: 1,
                              //                       color:  AppColors.BASIC_BROWN_COLOR,
                              //                     )
                              //                 ),
                              //                 child: Padding(
                              //                   padding: const EdgeInsets.all(2),
                              //                   child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                              //                 )),
                              //           ],
                              //         ),
                              //       );
                              //     },
                              //
                              //   ),
                              // )
                              //
                            ],
                          ),
                          Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: IconButton(onPressed:(){}, icon: Icon(Icons.delete_sweep) , color: Colors.red,)),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            );
          }else
            {
              return Container(
                margin: EdgeInsetsDirectional.only(bottom: 20),
                width: 380,
                height:150,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: Row(
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('images/man_card_home2.png',
                        fit: BoxFit.cover,
                        width: 100.w,
                        height: 140.h,
                      ),
                      Padding(
                        padding:  EdgeInsetsDirectional.only(start: 10 , top: 10 , bottom: 10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text_widget(text: getTranslated(context, 'prof_sec12_text3')!, text_size: 12.sp , text_color: Colors.black,),
                                AppWidgetElevatedButton(
                                    height_size: 20.h,
                                    width_size: 35.w,
                                    fontSize: 8.sp,
                                    background_color: Colors.white,
                                    color_text: Colors.black,
                                    text:getTranslated(context, 'prof_sec11_text1')!, onpressed: (){

                                })
                              ],
                            ),
                            SizedBox(width: 20.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text_widget(text: getTranslated(context, 'saved_sizes_text3')!, text_size: 12.sp, text_color: Colors.black,),
                                Row(
                                  children: [
                                    SizedBox(
                                        width:28.w,
                                        child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                    //  Spacer(),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(0),
                                            side: BorderSide(
                                              width: 1,
                                              color:  AppColors.BASIC_BROWN_COLOR,
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                        )),
                                    SizedBox(
                                        width:28.w,
                                        child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                    //  Spacer(),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(0),
                                            side: BorderSide(
                                              width: 1,
                                              color:  AppColors.BASIC_BROWN_COLOR,
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                        )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        width:28.w,
                                        child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                    //  Spacer(),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(0),
                                            side: BorderSide(
                                              width: 1,
                                              color:  AppColors.BASIC_BROWN_COLOR,
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                        )),
                                    SizedBox(
                                        width:28.w,
                                        child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                    //  Spacer(),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(0),
                                            side: BorderSide(
                                              width: 1,
                                              color:  AppColors.BASIC_BROWN_COLOR,
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                        )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        width:28.w,
                                        child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                    //  Spacer(),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(0),
                                            side: BorderSide(
                                              width: 1,
                                              color:  AppColors.BASIC_BROWN_COLOR,
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                        )),
                                    SizedBox(
                                        width:28.w,
                                        child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                    //  Spacer(),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(0),
                                            side: BorderSide(
                                              width: 1,
                                              color:  AppColors.BASIC_BROWN_COLOR,
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                        )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        width:28.w,
                                        child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                    //  Spacer(),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(0),
                                            side: BorderSide(
                                              width: 1,
                                              color:  AppColors.BASIC_BROWN_COLOR,
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                        )),
                                    SizedBox(
                                        width:28.w,
                                        child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                    //  Spacer(),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(0),
                                            side: BorderSide(
                                              width: 1,
                                              color:  AppColors.BASIC_BROWN_COLOR,
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                        )),
                                  ],
                                ),
                                // SizedBox(
                                //   height: 150,
                                //   width: 100,
                                //   child: GridView.builder(
                                //
                                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                //       crossAxisCount: 2
                                //     ),
                                //     itemBuilder: (context , index){
                                //       return  SizedBox(
                                //         height: 10.h,
                                //         child: Row(
                                //           children: [
                                //             SizedBox(
                                //                 width:28.w,
                                //                 child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text3')!,text_color: Colors.black,)),
                                //             //  Spacer(),
                                //             Card(
                                //                 shape: RoundedRectangleBorder(
                                //                     borderRadius: BorderRadius.circular(0),
                                //                     side: BorderSide(
                                //                       width: 1,
                                //                       color:  AppColors.BASIC_BROWN_COLOR,
                                //                     )
                                //                 ),
                                //                 child: Padding(
                                //                   padding: const EdgeInsets.all(2),
                                //                   child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.BASIC_BROWN_COLOR,),
                                //                 )),
                                //           ],
                                //         ),
                                //       );
                                //     },
                                //
                                //   ),
                                // )
                                //
                              ],
                            ),
                            Align(
                                alignment: AlignmentDirectional.bottomEnd,
                                child: IconButton(onPressed:(){}, icon: Icon(Icons.delete_sweep) , color: Colors.red,)),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              );
            }
      })
    ));
  }
}
