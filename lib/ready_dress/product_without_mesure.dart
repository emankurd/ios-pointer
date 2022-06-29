import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/ready_dress/product_without_edit/edit_branch.dart';
import 'package:ios_pentor/ready_dress/product_without_edit/edit_design.dart';
import 'package:ios_pentor/side_menue/cart_screen.dart';
import 'package:ios_pentor/side_menue/tab_bar_profile/father.dart';
import 'package:ios_pentor/side_menue/tab_bar_profile/sons.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
class ProductWithoutMesure extends StatefulWidget {
  const ProductWithoutMesure({Key? key}) : super(key: key);

  @override
  _ProductWithoutMesureState createState() => _ProductWithoutMesureState();
}
class _ProductWithoutMesureState extends State<ProductWithoutMesure> {
  bool is_selected_button=false;
  bool is_selected_button2=false;
  bool is_selected_button3=false;
  Color color_border_selected_button=AppColors.BASIC_BROWN_COLOR;
  Color color_border_unselected_button=Colors.grey.shade400;
  Color color_text_selected_button=Colors.black;
  int count=1;
  bool visible_main_col=true;
  bool visible_edit_dress=false;
  final GlobalKey<ScaffoldState> _scaffoldKey5 = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.GrAY_Light_Back_COLOR,
        resizeToAvoidBottomInset: true,
        key: _scaffoldKey5,
        appBar: AppBar(
          backgroundColor: AppColors.Bar_COLOR,
          iconTheme: IconThemeData(
            size: 30.h,
            color: Colors.white,
          ),
          //title: Text_widget(text_size: 16,text: getTranslated(context, 'home_page')! ,text_color: Colors.white,fontWeight: FontWeight.w400,),

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
          leading: IconButton(
            icon: Padding(
              padding: EdgeInsetsDirectional.only(start: 10),
              child: Icon(Icons.menu),
            ),
            onPressed: (){
              _scaffoldKey5.currentState!.openDrawer();
            },

          ),

        ),
          drawer: DrawerWidget(),
        body: visible_main_col? Column(
          //physics: ScrollPhysics(),
          //  shrinkWrap: true,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('images/man_card_home.png',fit: BoxFit.fill,
              width: double.infinity,
              height:300.h,
            ),
            SizedBox(height: 10.h,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Visibility(
                  visible: visible_main_col,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: Text_widget(textAlign: TextAlign.start , text_size: 14.h, text:getTranslated(context, 'cart_text3'),text_color: Colors.black,)),
                              Expanded(child:Text_widget( text_size: 18.h, text: '300 ${getTranslated(context, 'sr')}',text_color: Colors.red,),),
                              Expanded(child: Text_widget( text_size: 14.h, text: '${getTranslated(context, 'ready_text1')}261311',text_color: AppColors.GrAY_DRAWER_COLOR,)),

                            ],
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Expanded(child: Text_widget(textAlign:TextAlign.start, text: getTranslated(context, 'ready_text2'), text_size: 14,text_color: Colors.black,)),
                                AppWidgetElevatedButton(
                                    color_text: Colors.black,
                                    background_color: AppColors.BASIC_BROWN_COLOR,
                                    fontSize: 14.sp,
                                    height_size: 30.h,
                                    width_size : 100.w , text: getTranslated(context, 'product_without_text1')!, onpressed: (){
                                  setState(() {
                                    visible_main_col=false;
                                    visible_edit_dress=true;
                                  });
                                })
                              ],
                            )
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child:Row(
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
                                            child: Text_widget(text: getTranslated(context, 'saved_sizes_text1'),text_size: 14.sp, text_color: is_selected_button ? color_text_selected_button : color_border_unselected_button,))
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 3.w,),
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
                                            child: Text_widget(text: getTranslated(context, 'saved_sizes_text2'),text_size: 14.sp,text_color:is_selected_button2 ? color_text_selected_button : color_border_unselected_button,
                                            ))
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 3.w,),
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
                                            child: Text_widget(text: getTranslated(context, 'saved_sizes_text1'),text_size: 14.sp,text_color:is_selected_button3 ? color_text_selected_button : color_border_unselected_button))
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text_widget(textAlign:TextAlign.start, text: getTranslated(context, 'product_without_text2'), text_size: 14,text_color: Colors.black,),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 50.h,
                                  // width: 120.w,
                                  child: Card(
                                      elevation: 0,
                                      color: AppColors.GrAY_Light_Back_COLOR,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                          side: BorderSide(
                                              width: 1,
                                              color: Colors.grey.shade400
                                          )
                                      ),
                                      child: Align(
                                          alignment: AlignmentDirectional.center,
                                          child: Text_widget(text: getTranslated(context, 'prof_sec13_text1'), text_size: 14.sp, text_color: Colors.grey.shade400))
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w,),
                              Expanded(
                                child: SizedBox(
                                  height: 50.h,
                                  // width: 120.w,
                                  child: Card(
                                      elevation: 0,
                                      color: AppColors.GrAY_Light_Back_COLOR,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                          side: BorderSide(
                                              width: 1,
                                              color: Colors.grey.shade400
                                          )
                                      ),
                                      child: Align(
                                          alignment: AlignmentDirectional.center,
                                          child: Text_widget(text: getTranslated(context, 'prof_sec13_text2'),text_size: 14.sp, text_color: Colors.grey.shade400))
                                  ),
                                ),
                              ),                        ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 50.h,
                                  // width: 120.w,
                                  child: Card(
                                      elevation: 0,
                                      color: AppColors.GrAY_Light_Back_COLOR,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                          side: BorderSide(
                                              width: 1,
                                              color: Colors.grey.shade400
                                          )
                                      ),
                                      child: Align(
                                          alignment: AlignmentDirectional.center,
                                          child: Text_widget(text:getTranslated(context, 'prof_sec13_text4'),text_size: 14.sp, text_color: Colors.grey.shade400))
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w,),
                              Expanded(
                                child: SizedBox(
                                  height: 50.h,
                                  // width: 120.w,
                                  child: Card(
                                      elevation: 0,
                                      color: AppColors.GrAY_Light_Back_COLOR,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                          side: BorderSide(
                                              width: 1,
                                              color: Colors.grey.shade400
                                          )
                                      ),
                                      child: Align(
                                          alignment: AlignmentDirectional.center,
                                          child: Text_widget(text: getTranslated(context, 'prof_sec13_text3'),text_size: 12.sp, text_color: Colors.grey.shade400))
                                  ),
                                ),
                              ),                        ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Text_widget(text:getTranslated(context, 'ready_text4'), text_size: 16, text_color: Colors.black,),
                              SizedBox(width: 20.w,),
                              SizedBox(
                                height: 50,
                                width: 100,
                                child: Card(
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    // side: BorderSide(
                                    //     width: 1,
                                    //     color: AppColors.GrAY_DRAWER_COLOR
                                    // )
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
                                          child: Text_widget( text_size: 16, text: '+',text_color: Colors.black,)),
                                      SizedBox(width: 12,),
                                      Text_widget( text_size: 14, text: '$count',text_color: Colors.black,),
                                      SizedBox(width: 12,),
                                      InkWell(
                                          onTap: (){
                                            setState(() {
                                              count--;
                                            });
                                          },
                                          child: Text_widget( text_size: 16, text: '-',text_color: AppColors.GrAY_DRAWER_COLOR,)),

                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40.h),
                        Center(child: AppWidgetElevatedButton(
                          value: 1,
                          width_size:150.w,text: getTranslated(context, 'prof_sec14_text3')!, onpressed: (){

                        } , color_text: Colors.black, background_color: AppColors.BASIC_BROWN_COLOR,fontSize: 14.sp,)
                        ),
                        SizedBox(height: 40.h),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: visible_edit_dress,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: 300.w,
                  height: 50.h,
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: AppColors.GrAY_Light_Back_COLOR,
                    bottom: TabBar(
                      //  isScrollable: true,
                      indicatorColor: AppColors.BASIC_BROWN_COLOR,
                      indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor:AppColors.BASIC_BROWN_COLOR ,
                      unselectedLabelColor:AppColors.GrAY_DRAWER_COLOR ,
                      labelStyle: TextStyle(
                          fontSize: 16
                      ),

                      unselectedLabelStyle: TextStyle(
                          fontSize: 16
                      ),
                      // labelStyle: TextStyle(
                      //   color: AppColors.BASIC_BROWN_COLOR,
                      //   fontSize: 20,
                      // ),
                      // unselectedLabelStyle: TextStyle(
                      //     color: AppColors.GrAY_DRAWER_COLOR,
                      //   fontSize: 20,
                      //
                      // ),

                      tabs: [
                        Tab(
                            text: getTranslated(context, 'product_without_text1')
                          //child: Text_widget( text: 'Father',text_size: 20),
                        ),
                        Tab(
                            text: getTranslated(context, 'product_without_text3')
                          //  child: Text_widget( text: 'Sons',text_size: 20),

                          // icon: Icon(
                          //   Icons.directions_car,
                          // ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // create widgets for each tab bar here
            Visibility(
              visible: visible_edit_dress,
              child: Expanded(
                child: TabBarView(
                  children: [
                    // first tab bar view widget
                    EditDesign(),
                    EditBranch(),
                  ],
                ),
              ),
            ),

          ],
        ): Column(
          //physics: ScrollPhysics(),
          //  shrinkWrap: true,

          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset('images/man_card_home.png',fit: BoxFit.fill,
              width: double.infinity,
              height:300.h,
            ),
            SizedBox(height: 10.h,),

            Visibility(
              visible: visible_edit_dress,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: 300.w,
                  height: 50.h,
                  child: AppBar(

                    leading: Icon(
                      Icons.arrow_back_ios,
                      size: 1,
                      color: AppColors.GrAY_Light_Back_COLOR,
                    ),
                    elevation: 0,
                    backgroundColor: AppColors.GrAY_Light_Back_COLOR,
                    bottom: TabBar(
                      //  isScrollable: true,
                      indicatorColor: AppColors.BASIC_BROWN_COLOR,
                      indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor:AppColors.BASIC_BROWN_COLOR ,
                      unselectedLabelColor:AppColors.GrAY_DRAWER_COLOR ,
                      labelStyle: TextStyle(
                          fontSize: 18.sp
                      ),

                      unselectedLabelStyle: TextStyle(
                          fontSize: 18.sp
                      ),
                      // labelStyle: TextStyle(
                      //   color: AppColors.BASIC_BROWN_COLOR,
                      //   fontSize: 20,
                      // ),
                      // unselectedLabelStyle: TextStyle(
                      //     color: AppColors.GrAY_DRAWER_COLOR,
                      //   fontSize: 20,
                      //
                      // ),

                      tabs: [
                        SizedBox(
                          height: 40.h,
                          child: Tab(
                              text: getTranslated(context, 'product_without_text1')
                            //child: Text_widget( text: 'Father',text_size: 20),
                          ),
                        ),
                        SizedBox(
                          height: 40.h,

                          child: Tab(
                              text: getTranslated(context, 'product_without_text3')
                            //  child: Text_widget( text: 'Sons',text_size: 20),

                            // icon: Icon(
                            //   Icons.directions_car,
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //SizedBox(height: 20.h,),
            // create widgets for each tab bar here
            Visibility(
              visible: visible_edit_dress,
              child: Expanded(
                child: TabBarView(
                  children: [
                    // first tab bar view widget
                    EditDesign(),
                    EditBranch(),
                  ],
                ),
              ),
            ),

          ],
        )
      ),
    ));
  }


/*
  Image.asset('images/man_card_home.png',fit: BoxFit.fill,
              width: double.infinity,
              height:300.h,
            ),

 */
}
