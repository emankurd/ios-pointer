import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/ready_dress/product_without_mesure.dart';
import 'package:ios_pentor/side_menue/cart_screen.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
class ReadyProduct extends StatefulWidget {
  const ReadyProduct({Key? key}) : super(key: key);

  @override
  _ReadyProductState createState() => _ReadyProductState();
}

class _ReadyProductState extends State<ReadyProduct> {
  bool visible_size=true;
  bool visible_size2=false;
  int count=1;
  Color color_border_selected_button=AppColors.BASIC_BROWN_COLOR;
  Color color_border_unselected_button=Colors.grey.shade400;
  Color color_text_selected_button=Colors.black;
  bool is_selected_button=false;
  bool is_selected_button2=false;
  bool is_selected_button3=false;
  final GlobalKey<ScaffoldState> _scaffoldKey4 = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      key: _scaffoldKey4,
      backgroundColor: AppColors.GrAY_Light_Back_COLOR,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: AppColors.Bar_COLOR,
        iconTheme: IconThemeData(
          size: 30.h,
          color: Colors.white,
        ),
     //   title: Text_widget(text_size: 16,text: getTranslated(context, 'home_page')! ,text_color: Colors.white,fontWeight: FontWeight.w400,),

        centerTitle: true,
        actionsIconTheme: IconThemeData(
          size: 25.r,
        ),
        leading: IconButton(
          icon: Padding(
            padding: EdgeInsetsDirectional.only(start: 10),
            child: Icon(Icons.menu),
          ),
          onPressed: (){
            _scaffoldKey4.currentState!.openDrawer();
          },

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
            Image.asset('images/man_card_home.png',fit: BoxFit.fill,
              width: double.infinity,
              height:300.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
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
                      child: Text_widget(textAlign:TextAlign.start, text: getTranslated(context, 'ready_text2'), text_size: 14,text_color: Colors.black,),
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
                    Visibility(
                      visible: visible_size2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          elevation: 0,
                          color: AppColors.GrAY_Light_Back_COLOR,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                color: Colors.grey.shade400,
                              )
                          ),
                          child: SizedBox(
                              height: 40.h,
                              child: Row(
                                children: [
                                  SizedBox(width: 10.w,),
                                  Text_widget(text: getTranslated(context, 'ready_text3'), text_size: 12,text_color: Colors.grey.shade400,),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            height: 30.h,
                                           width: 30.w,
                                            child: Card(
                                                elevation: 0,
                                                color: AppColors.GrAY_Light_Back_COLOR,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.grey.shade400
                                                    )
                                                ),
                                                child: Align(
                                                    alignment: AlignmentDirectional.center,
                                                    child: Text_widget(text: '42',text_size: 12.sp, text_color: Colors.grey.shade400,))
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            height: 30.h,
                                            width: 30.w,
                                            child: Card(
                                                elevation: 0,
                                                color: AppColors.GrAY_Light_Back_COLOR,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.grey.shade400
                                                    )
                                                ),
                                                child: Align(
                                                    alignment: AlignmentDirectional.center,
                                                    child: Text_widget(text: '44',text_size: 12.sp, text_color: Colors.grey.shade400,))
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            height: 30.h,
                                            width: 30.w,
                                            child: Card(
                                                elevation: 0,
                                                color: AppColors.GrAY_Light_Back_COLOR,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.grey.shade400
                                                    )
                                                ),
                                                child: Align(
                                                    alignment: AlignmentDirectional.center,
                                                    child: Text_widget(text: '46',text_size: 12.sp, text_color: Colors.grey.shade400,))
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            height: 30.h,
                                            width: 30.w,
                                            child: Card(
                                                elevation: 0,
                                                color: AppColors.GrAY_Light_Back_COLOR,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.grey.shade400
                                                    )
                                                ),
                                                child: Align(
                                                    alignment: AlignmentDirectional.center,
                                                    child: Text_widget(text: '48',text_size: 12.sp, text_color: Colors.grey.shade400,))
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            height: 30.h,
                                            width: 30.w,
                                            child: Card(
                                                elevation: 0,
                                                color: AppColors.GrAY_Light_Back_COLOR,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.grey.shade400
                                                    )
                                                ),
                                                child: Align(
                                                    alignment: AlignmentDirectional.center,
                                                    child: Text_widget(text: '50',text_size: 12.sp, text_color: Colors.grey.shade400,))
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            height: 30.h,
                                            width: 30.w,
                                            child: Card(
                                                elevation: 0,
                                                color: AppColors.GrAY_Light_Back_COLOR,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.grey.shade400
                                                    )
                                                ),
                                                child: Align(
                                                    alignment: AlignmentDirectional.center,
                                                    child: Text_widget(text: '52',text_size: 12.sp, text_color: Colors.grey.shade400,))
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                 // SizedBox(width: 10.w,),
                                  IconButton(
                                      onPressed: (){
                                        setState(() {
                                          visible_size=true;
                                          visible_size2=false;
                                        });
                                      },
                                      icon: Icon(Icons.arrow_back_ios , size: 15,color: Colors.grey.shade400,)
                                  ),
                           //       SizedBox(width: 10.w,)
                                ],
                              )
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: visible_size,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          elevation: 0,
                          color: AppColors.GrAY_Light_Back_COLOR,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  color: Colors.grey.shade400,
                              )
                          ),
                          child: SizedBox(
                            width: 130.w,
                            height: 40.h,
                            child: Row(
                              children: [
                                SizedBox(width: 10.w,),
                                Text_widget(text: getTranslated(context, 'ready_text3') , text_size: 12,text_color: Colors.grey.shade400,),
                                SizedBox(width: 10.w,),
                               IconButton(
                                  onPressed: (){
                                    setState(() {
                                      visible_size=false;
                                      visible_size2=true;
                                    });
                                  },
                                  icon: Icon(Icons.arrow_forward_ios , size: 15,color: Colors.grey.shade400,)
                                  ),

                              ],
                            )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text_widget(text: getTranslated(context, 'ready_text4'), text_size: 16, text_color: Colors.black,),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ProductWithoutMesure();
                        }));
                    } , color_text: Colors.black, background_color: AppColors.BASIC_BROWN_COLOR,fontSize: 14.sp,)
                    ),
                    SizedBox(height: 40.h),


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
