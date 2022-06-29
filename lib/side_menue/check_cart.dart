import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/shared_pref/shared_pref_language.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:ios_pentor/widgets/card_row_widget.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cart_screen.dart';

class CheckCartScreen extends StatefulWidget {
  const CheckCartScreen({Key? key}) : super(key: key);

  @override
  _CheckCartScreenState createState() => _CheckCartScreenState();
}

class _CheckCartScreenState extends State<CheckCartScreen> {
  final double circleRadius = 100.0;
  final double circleBorderWidth = 8.0;
  final GlobalKey<ScaffoldState> _scaffoldKey1 = new GlobalKey<ScaffoldState>();
  int count=250;
  bool visible_column=false;
  Color color_tap=AppColors.GrAY_DRAWER_COLOR;
  Color color_tap2=AppColors.GrAY_DRAWER_COLOR;
  Color color_tap3=AppColors.GrAY_DRAWER_COLOR;
  bool is_location=true;
  bool is_payment=false;
  bool is_confirmation=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey1,
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.GrAY_Light_Back_COLOR,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:Text_widget(textAlign: TextAlign.start , text: getTranslated(context, 'cart_text1'), text_size: 18.sp),
          centerTitle: true,
          actionsIconTheme: IconThemeData(
            size: 20.r,
          ),
          leading: IconButton(
            icon: Padding(
              padding: EdgeInsetsDirectional.only(start: 10.h),
              child: Icon(Icons.menu),
            ),
            onPressed: (){
              _scaffoldKey1.currentState!.openDrawer();
            },

          ),
          actions: [
            IconButton(
              icon: Padding(
                padding: EdgeInsetsDirectional.only(start: 20.h),
                child: Icon(Icons.search , ),
              ) ,
              onPressed: () {
                setState(() {
                }
                );

              },
            ),
            Padding(
                padding: EdgeInsetsDirectional.only(end: 10.h),
                child: IconButton(
                  icon: Icon(Icons.shopping_cart_outlined) ,
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40 , vertical: 60),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child:  Container(
                        width: 80.w,
                        height: 80.h,
                        decoration:
                        ShapeDecoration(shape:CircleBorder() , color: Colors.white),
                        child: IconButton(
                          onPressed: (){
                            setState(() {
                               is_location=true;
                               is_payment=false;
                               is_confirmation=false;
                            });
                          },
                          icon: Icon(Icons.location_on_sharp , size: 65.r,color: is_location ? AppColors.BASIC_BROWN_COLOR :AppColors.GrAY_DRAWER_COLOR,),
                        ),
                      ),
                    ),
                    Expanded(
                      child:  Container(
                        width: 80.w,
                        height: 80.h,
                        decoration:
                        ShapeDecoration(shape:CircleBorder() , color: Colors.white),
                        child: InkWell(
                            onTap: (){
                             setState(() {
                               is_location=false;
                               is_payment=true;
                               is_confirmation=false;
                             });
                            },
                            child: is_payment ? Image.asset('images/riyal_brown.png') :Image.asset('images/riyal_gray.png')  )
                      ),
                    ),
                    Expanded(
                      child:  Container(
                        width: 80.w,
                        height: 80.h,
                        decoration:
                        ShapeDecoration(shape:CircleBorder() , color: Colors.white),
                        child: IconButton(
                          onPressed: (){
                            setState(() {
                              is_location=false;
                              is_payment=false;
                              is_confirmation=true;
                            });
                          },
                          icon: Icon(Icons.check_circle_outline_outlined , size: 70.r,color: is_confirmation ? AppColors.BASIC_BROWN_COLOR: AppColors.GrAY_DRAWER_COLOR,),
                        ),
                      ),
                    ),

                  ],
                ),
                Visibility(
                  visible: is_location,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 160.w,
                          child: ListTile(
                              minLeadingWidth:5,
                              horizontalTitleGap: 0,
                              leading: Icon(Icons.location_on_sharp, size: 25.r,),
                              title: Text_widget(text: getTranslated(context, 'uber_text3'), text_color: AppColors.GrAY_DRAWER_COLOR, text_size: 14.sp,)
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  SizedBox(
                                      height:35.h,
                                      child: Text_widget(text: getTranslated(context, 'uber_text4'), text_size: 14.sp , fontWeight: FontWeight.w400,)),
                                  SizedBox(
                                    height:30.h,
                                    child: TextField(
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: AppColors.BASIC_BROWN_COLOR,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width:20.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height:35.h,
                                      child: Text_widget(text: getTranslated(context, 'uber_text5'), text_size: 14.sp , text_color: AppColors.GrAY_DRAWER_COLOR,)),
                                  SizedBox(
                                    height:30.h,

                                    child: TextField(
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: AppColors.GrAY_DRAWER_COLOR,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height:25.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height:35,
                                      child: Text_widget(text: getTranslated(context, 'bar_text6'), text_size: 14 , text_color: AppColors.GrAY_DRAWER_COLOR,)),
                                  SizedBox(
                                    height:30,
                                    child: TextField(
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: AppColors.GrAY_DRAWER_COLOR,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width:20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height:35,
                                      child: Text_widget(text:getTranslated(context, 'bar_text7'), text_size: 14 , text_color: AppColors.GrAY_DRAWER_COLOR,)),
                                  SizedBox(
                                    height:30,

                                    child: TextField(
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: AppColors.GrAY_DRAWER_COLOR,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height:15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height:35.h,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.only(start: 10),
                                  child: Text_widget(textAlign:TextAlign.start ,text: getTranslated(context, 'bar_text8'), text_size: 14.sp , text_color: AppColors.GrAY_DRAWER_COLOR,),
                                )),
                            SizedBox(
                              height:30.h,
                              child: TextField(
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: AppColors.GrAY_DRAWER_COLOR,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height:15.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height:35.h,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.only(start: 10),
                                  child: Text_widget(textAlign:TextAlign.start ,text: getTranslated(context, 'check_cart_text1'), text_size: 14.sp , text_color: AppColors.GrAY_DRAWER_COLOR,),
                                )),
                            Row(
                              children: [
                                Expanded(
                                  child: ListTile(
                                      minLeadingWidth:10,

                                      horizontalTitleGap: 0,
                                      leading: Icon(Icons.home_filled, size: 25.r,),
                                      title: Text_widget(text: getTranslated(context, 'check_cart_text2'), text_color: AppColors.GrAY_DRAWER_COLOR, text_size: 12.sp,)
                                  ),
                                ),
                                Expanded(child: ListTile(
                                    minLeadingWidth:10,

                                    horizontalTitleGap: 0,
                                    leading: Icon(Icons.work, size: 25.r,),
                                    title: Text_widget(text: getTranslated(context, 'check_cart_text3'), text_color: AppColors.GrAY_DRAWER_COLOR, text_size: 12.sp,)
                                ),),
                                Expanded(
                                  child: ListTile(
                                      minLeadingWidth:10,
                                      horizontalTitleGap: 0,
                                      leading: Icon(Icons.location_on_sharp, size: 25.sp,),
                                      title: Text_widget(text: getTranslated(context, 'check_cart_text4'), text_color: AppColors.GrAY_DRAWER_COLOR, text_size: 12.sp,)
                                  ),
                                )

                              ],
                            )
                          ],
                        ),

                        SizedBox(height: 25.h,),
                        Center(
                          child: ElevatedButton(
                            onPressed:(){
                              setState(() {
                                is_location=false;
                                is_payment=true;
                                is_confirmation=false;
                              });
                            },
                            clipBehavior: Clip.antiAlias,
                            child: SizedBox(
                              width: 80.w,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(getTranslated(context, 'next')!,textAlign: TextAlign.center, style: TextStyle(

                                        fontFamily: 'POP',
                                        color: Colors.black,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w400
                                    ),),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios, color: Colors.black,
                                  )

                                ],
                              ),
                            ),
                            style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all(Size(120.w , 55.h)),
                                backgroundColor: MaterialStateProperty.all(AppColors.BASIC_BROWN_COLOR),
                                elevation:MaterialStateProperty.all(0) ,
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                    )
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: is_payment,
                  child: Column(
                    children: [
                      ListTile(
                          onTap: (){
                            setState(() {
                              visible_column=false;
                              color_tap=AppColors.BASIC_BROWN_COLOR;
                              color_tap2=AppColors.GrAY_DRAWER_COLOR;
                              color_tap3=AppColors.GrAY_DRAWER_COLOR;

                            });
                          },
                          minLeadingWidth:10,
                          horizontalTitleGap: 5,
                          leading: Icon(Icons.circle, size: 25.r,color: color_tap,),
                          title: Text_widget(textAlign:TextAlign.start,text: getTranslated(context, 'check_cart_text5'), text_color: color_tap, text_size: 16.sp,)
                      ),
                      ListTile(
                          onTap: (){
                            setState(() {
                              visible_column=true;
                              color_tap2=AppColors.BASIC_BROWN_COLOR;
                              color_tap=AppColors.GrAY_DRAWER_COLOR;
                              color_tap3=AppColors.GrAY_DRAWER_COLOR;
                            });
                          },
                          minLeadingWidth:10,
                          horizontalTitleGap: 5,
                          leading: Icon(Icons.circle, size: 25.r,color: color_tap2,),
                          title: Text_widget(textAlign:TextAlign.start,text:getTranslated(context, 'check_cart_text6'), text_color:color_tap2, text_size: 16.sp,)
                      ),
                      ListTile(
                          onTap: (){
                            setState(() {
                              visible_column=false;
                              color_tap3=AppColors.BASIC_BROWN_COLOR;
                              color_tap2=AppColors.GrAY_DRAWER_COLOR;
                              color_tap=AppColors.GrAY_DRAWER_COLOR;
                            });
                          },
                          minLeadingWidth:10,
                          horizontalTitleGap: 5,
                          leading: Icon(Icons.circle, size: 25.r,color: color_tap3,),
                          title: Text_widget(textAlign:TextAlign.start,text: getTranslated(context, 'check_cart_text7'), text_color: color_tap3, text_size: 16.sp,)
                      ),
                      SizedBox(height: 15.h,),
                      Visibility(
                        visible: visible_column,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CardRowWidget(text_field: getTranslated(context, 'card_text2'),text_hint: '0500000000',color_field: Colors.black,hint_color: AppColors.BASIC_BROWN_COLOR,),
                            SizedBox(height: 15.h,),
                            CardRowWidget(text_field:getTranslated(context, 'card_text3'),text_hint:getTranslated(context, 'card_text3'),color_field: Colors.black,hint_color: AppColors.BASIC_BROWN_COLOR,),
                            SizedBox(height: 15.h,),
                            SizedBox(
                              height: 50,
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
                          ],
                        ),
                      ),
                      SizedBox(height: 25.h,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height:35.h,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(start: 10),
                                child: Text_widget(textAlign:TextAlign.start ,text: getTranslated(context, 'check_cart_text8'), text_size: 14.sp , text_color: AppColors.GrAY_DRAWER_COLOR,),
                              )),
                          SizedBox(
                            height:30.h,
                            child: TextField(
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: AppColors.GrAY_DRAWER_COLOR,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 25.h,),
                      ElevatedButton(
                        onPressed:(){
                          setState(() {
                            is_location=false;
                            is_payment=false;
                            is_confirmation=true;
                          });
                        },
                        clipBehavior: Clip.antiAlias,
                        child: SizedBox(
                          width: 80.w,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(getTranslated(context, 'next')!,textAlign: TextAlign.center, style: TextStyle(

                                    fontFamily: 'POP',
                                    color: Colors.black,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400
                                ),),
                              ),
                              Icon(
                                Icons.arrow_forward_ios, color: Colors.black,
                              )

                            ],
                          ),
                        ),
                        style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(Size(120.w , 55.h)),
                            backgroundColor: MaterialStateProperty.all(AppColors.BASIC_BROWN_COLOR),
                            elevation:MaterialStateProperty.all(0) ,
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.r),
                                )
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: is_confirmation,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(top: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: AppPrefController().languageCode == 'en'?  255.h :280.h ,
                            child: ListView.builder(
                                itemBuilder: (context , index){
                              return Padding(
                                padding: EdgeInsetsDirectional.only(end: 25.w),
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: circleRadius /7),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10.r),
                                        ),
                                        width: 200.w,
                                        child:Padding(
                                          padding: const EdgeInsets.only(top: 105),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text_widget( text_size: 12.sp, text: '$count ',text_color: Colors.red,),
                                                    Text_widget(text_size: 12.sp, text:getTranslated(context, 'sr'),text_color: Colors.red,),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 35.h,
                                                  width: 80.w,
                                                  child: Card(
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10.r),
                                                        side: BorderSide(
                                                            width: 1.w,
                                                            color: AppColors.BASIC_BROWN_COLOR
                                                        )
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        InkWell(
                                                            onTap: (){
                                                              setState(() {
                                                                count++;
                                                              });
                                                            },
                                                            child: Text_widget( text_size: 16.sp, text: '+',text_color: Colors.black,)),
                                                        SizedBox(width: 8.w,),
                                                        Text_widget( text_size: 14.sp, text: '|',text_color: Colors.black,),
                                                        SizedBox(width: 8.w,),
                                                        InkWell(
                                                            onTap: (){
                                                              setState(() {
                                                                count--;
                                                              });
                                                            },
                                                            child: Text_widget( text_size: 16.sp, text: '-',text_color: AppColors.GrAY_DRAWER_COLOR,)),

                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                  child: Row(
                                                    children: [
                                                      Text_widget(text_size: 11, text:getTranslated(context, 'cart_text2'),text_color: Colors.black,),
                                                      Spacer(),
                                                      Text_widget(text_size: 11.sp, text: getTranslated(context, 'cart_text3'),text_color: AppColors.GrAY_DRAWER_COLOR,),

                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                  child: Row(
                                                    children: [
                                                      Text_widget(text_size: 11.sp, text:getTranslated(context, 'cart_text4'),text_color: Colors.black,),
                                                      Spacer(),
                                                      Text_widget(text_size: 11.sp, text: getTranslated(context, 'saved_sizes_text1'),text_color: AppColors.GrAY_DRAWER_COLOR,),

                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                          width: 50.w,
                                                          child: Text_widget(text_size: 11.sp, text: getTranslated(context, 'cart_text5'),text_color: Colors.black,)),
                                                      //  Spacer(),
                                                      Card(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(0),
                                                              side: BorderSide(
                                                                  width: 1,
                                                                  color: AppColors.BASIC_BROWN_COLOR
                                                              )
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(2),
                                                            child: Text_widget(text_size: 10.sp, text: '52',text_color: AppColors.GrAY_DRAWER_COLOR,),
                                                          )),
                                                      SizedBox(width: 20.w,),
                                                      Image.asset('images/delete_gray.png',height: 18.h,width: 17.w, fit: BoxFit.cover,),

                                                    ],
                                                  ),
                                                ),


                                              ],
                                            ),
                                          ),
                                        ),
                                        //replace this Container with your Card
                                        height: 400.h,
                                      ),
                                    ),
                                    Container(
                                      width: 120.w,
                                      height: 120.h,
                                      decoration:
                                      ShapeDecoration(shape: ContinuousRectangleBorder()),
                                      child: DecoratedBox(
                                        decoration: ShapeDecoration(
                                            shape: ContinuousRectangleBorder(),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'images/man_card.png'
                                                ))
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            itemCount: 8,
                              scrollDirection: Axis.horizontal ,
                            ),
                          ),
                          SizedBox(height: 40.h,),
                          Row(
                            children: [
                              Text_widget(text: getTranslated(context, 'cart_text6'), text_size: 16,),
                              Text_widget(text: '500 ${getTranslated(context, 'sr')}', text_size: 16, text_color: Colors.black,)
                            ],
                          ),
                          SizedBox(height: 10.h,),
                          Row(
                            children: [
                              Text_widget(text: getTranslated(context, 'check_cart_text9'), text_size: 16.sp,),
                              Text_widget(text: '50 ${getTranslated(context, 'sr')}', text_size: 16.sp, text_color: Colors.black,)
                            ],
                          ),
                          SizedBox(height: 10.h,),
                          Row(
                            children: [
                              Text_widget(text:getTranslated(context, 'check_cart_text10'), text_size: 16.sp,),
                              Text_widget(text: '550 ${getTranslated(context, 'sr')}', text_size: 16.sp, text_color: Colors.black,)
                            ],
                          ),
                          SizedBox(height: 25.h,),
                          AppWidgetElevatedButton(text: getTranslated(context, 'check_cart_text11')!, color_text: Colors.black,background_color:AppColors.BASIC_BROWN_COLOR, width_size: 170.w,onpressed: (){
                            setState(() {
                              is_location=false;
                              is_payment=false;
                              is_confirmation=true;
                            });
                          })

                        ],
                      ),
                    ),
                  ),
                ),
                // AppWidgetElevatedButton(
                //     width_size: 120,
                //     background_color: AppColors.BASIC_BROWN_COLOR,
                //     color_text: Colors.black,
                //     text: 'Naxt >', onpressed: (){})
              ],
            ),
          ),
        ),
      ),
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

      });
    });
  }
}
