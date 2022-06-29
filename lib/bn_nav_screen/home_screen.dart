import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:connectivity/connectivity.dart';
import 'package:ios_pentor/side_menue/cart_screen.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/wifi/connectivity_provider.dart';
import 'package:ios_pentor/wifi/getx_network_manager.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double circleRadius = 100.0;
  final double circleBorderWidth = 8.0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
   bool isConnected=false;
  int count=250;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<ConnectivityProvider>(context , listen: false).startMonitoring();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: AppColors.Bar_COLOR,
        title: Text_widget(text_size: 16,text: getTranslated(context, 'home_page')! ,text_color: Colors.white,fontWeight: FontWeight.w400,),
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
      body: Center(
        child: Consumer<ConnectivityProvider>(
           builder: (context , model , child){
             if(model.isOnline !=null){
               return model.isOnline! ?  SingleChildScrollView(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   children: [
                     Stack(
                       children: [
                         Image.asset('images/man_card_home.png',fit: BoxFit.fill,
                           width: double.infinity,
                           height:300.h,
                         ),
                         Container(
                           height: 60.h,
                           width: double.infinity,
                           margin: EdgeInsetsDirectional.only(top:110.h),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.end,
                             mainAxisSize: MainAxisSize.min,
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.circle , color: AppColors.BASIC_BROWN_COLOR,size: 10,))),
                               Expanded(child:IconButton(onPressed: (){}, icon: Icon(Icons.circle , color: Colors.white,size: 10,)),),
                               Expanded(child:IconButton(onPressed: (){}, icon: Icon(Icons.circle , color: Colors.white,size: 10,)),),
                               Expanded(child:IconButton(onPressed: (){}, icon: Icon(Icons.circle , color: Colors.white,size: 10,)),),

                             ],
                           ),
                         ),
                         Container(
                           width: double.infinity,
                           height: 100.h,
                           margin: EdgeInsetsDirectional.only(top:170.h,start: 15.w),
                           child: SingleChildScrollView(
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisSize: MainAxisSize.min,
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Text_widget(text:getTranslated(context, 'cart_text3'), text_size: 12.sp),
                                 SizedBox(height: 5.h,),
                                 Text_widget(text: '250 ${getTranslated(context, 'sr')}', text_size: 12.sp , text_color: Colors.white,),
                                 SizedBox(height: 10.h,),
                                 SizedBox(
                                   width: 120.w,
                                   child: Row(
                                     children: [
                                       SizedBox(
                                         height: 30.h,
                                         width: 70.w,
                                         child: Card(
                                             color: Colors.transparent,
                                             shape: RoundedRectangleBorder(
                                                 borderRadius: BorderRadius.circular(10),
                                                 side: BorderSide(
                                                     width: 1,
                                                     color: AppColors.BASIC_BROWN_COLOR
                                                 )
                                             ),
                                             child: Align(
                                                 alignment: AlignmentDirectional.center,
                                                 child: Text_widget(text: getTranslated(context, 'my_designs_text3'),text_size: 10.sp,))
                                         ),
                                       ),
                                       SizedBox(
                                         width: 20.w,
                                         child: IconButton(onPressed: (){}, icon: Icon(
                                           Icons.shopping_cart_outlined , color: AppColors.GrAY_DRAWER_COLOR, size: 20.r ,
                                         )),
                                       )
                                     ],
                                   ),
                                 )

                               ],
                             ),
                           ),
                         ),
                       ],

                     ),
                     //    SizedBox(height: 15.h,),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
                       child: SingleChildScrollView(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text_widget(textAlign:TextAlign.start, text:getTranslated(context, 'h_text1'), text_size: 14,text_color: Colors.black,),
                             SizedBox(height: 5.h),
                             Row(
                               children: [
                                 Expanded(
                                   child: SizedBox(
                                     height: 30.h,
                                     width: 70.w,
                                     child: Card(
                                         color: AppColors.BASIC_BROWN_COLOR,
                                         shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(10),
                                             side: BorderSide(
                                                 width: 1,
                                                 color: AppColors.BASIC_BROWN_COLOR
                                             )
                                         ),
                                         child: Align(
                                             alignment: AlignmentDirectional.center,
                                             child: Text_widget(text: getTranslated(context, 'h_text2'),text_size: 10.sp,text_color: Colors.black,))
                                     ),
                                   ),
                                 ),
                                 SizedBox(width: 3.w,),
                                 Expanded(
                                   child: SizedBox(
                                     height: 30.h,
                                     width: 70.w,
                                     child: Card(
                                         color: AppColors.GrAY_Light_Back_COLOR,
                                         shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(10),
                                             side: BorderSide(
                                                 width: 1,
                                                 color: AppColors.BASIC_BROWN_COLOR
                                             )
                                         ),
                                         child: Align(
                                             alignment: AlignmentDirectional.center,
                                             child: Text_widget(text: getTranslated(context, 'h_text3'),text_size: 10.sp,))
                                     ),
                                   ),
                                 ),
                                 SizedBox(width: 3.w,),
                                 Expanded(
                                   child: SizedBox(
                                     height: 30.h,
                                     width: 70.w,
                                     child: Card(
                                         color: AppColors.GrAY_Light_Back_COLOR,
                                         shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(10),
                                             side: BorderSide(
                                                 width: 1,
                                                 color: AppColors.BASIC_BROWN_COLOR
                                             )
                                         ),
                                         child: Align(
                                             alignment: AlignmentDirectional.center,
                                             child: Text_widget(text: getTranslated(context, 'h_text4'),text_size: 10.sp,))
                                     ),
                                   ),
                                 ),
                                 SizedBox(width: 3.w,),
                                 Expanded(
                                   child: SizedBox(
                                     height: 30.h,
                                     width: 70.w,
                                     child: Card(
                                         color: AppColors.GrAY_Light_Back_COLOR,
                                         shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(10),
                                             side: BorderSide(
                                                 width: 1,
                                                 color: AppColors.BASIC_BROWN_COLOR
                                             )
                                         ),
                                         child: Align(
                                             alignment: AlignmentDirectional.center,
                                             child: Text_widget(text: getTranslated(context, 'h_text5'),text_size: 10.sp,))
                                     ),
                                   ),
                                 ),
                                 SizedBox(width: 3.w,),
                                 Expanded(
                                   child: SizedBox(
                                     height: 30.h,
                                     width: 70.w,
                                     child: Card(
                                         color: AppColors.GrAY_Light_Back_COLOR,
                                         shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(10),
                                             side: BorderSide(
                                                 width: 1,
                                                 color: AppColors.BASIC_BROWN_COLOR
                                             )
                                         ),
                                         child: Align(
                                             alignment: AlignmentDirectional.center,
                                             child: Text_widget(text: getTranslated(context, 'h_text6'),text_size: 10.sp,))
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                             SizedBox(height: 5.h),
                             SizedBox(
                               height: 210.h,
                               child: ListView.builder(
                                   scrollDirection: Axis.horizontal,
                                   shrinkWrap: true,
                                   itemBuilder: (context , index){
                                     return Padding(
                                       padding: const EdgeInsetsDirectional.only(end: 20),
                                       child: Stack(
                                         alignment: Alignment.topCenter,
                                         children: <Widget>[
                                           Padding(
                                             padding: EdgeInsets.only(top: circleRadius /7),
                                             child: Container(
                                               decoration: BoxDecoration(
                                                   color: Colors.white,
                                                   borderRadius: BorderRadius.circular(10.r),
                                                   boxShadow: [
                                                     BoxShadow(offset: Offset(0,0),
                                                         color: AppColors.GrAY_Light_Back_COLOR,
                                                         blurRadius: 6,
                                                         spreadRadius: 3
                                                     )
                                                   ]
                                               ),
                                               width: 140.w,
                                               child:Padding(
                                                 padding: const EdgeInsets.only(top: 105),
                                                 child: SingleChildScrollView(
                                                   child: Column(
                                                     // crossAxisAlignment: CrossAxisAlignment.stretch,
                                                     children: [
                                                       Text_widget(textAlign: TextAlign.start , text_size: 11, text:getTranslated(context, 'cart_text3'),text_color: Colors.black,),
                                                       SizedBox(height:3.h),
                                                       SizedBox(
                                                         width: 100.w,
                                                         child: Row(
                                                           mainAxisAlignment: MainAxisAlignment.center,
                                                           children: [
                                                             Text_widget(text_size: 12, text: '250 ${getTranslated(context, 'sr')!}',text_color: Colors.black,),
                                                             Spacer(),
                                                             Text_widget(text_size: 12, text: '250 ${getTranslated(context, 'sr')!}',text_color: AppColors.GrAY_DRAWER_COLOR,),
                                                           ],
                                                         ),
                                                       ),
                                                       SizedBox(height:10.h),
                                                       SizedBox(
                                                         width: 120.w,
                                                         child: Row(
                                                           children: [
                                                             Expanded(
                                                               child: Card(
                                                                   color: Colors.white,
                                                                   shape: RoundedRectangleBorder(
                                                                       borderRadius: BorderRadius.circular(10),
                                                                       side: BorderSide(
                                                                           width: 1,
                                                                           color: AppColors.BASIC_BROWN_COLOR
                                                                       )
                                                                   ),
                                                                   child: Align(
                                                                       alignment: AlignmentDirectional.center,
                                                                       child: Text_widget(text: getTranslated(context, 'my_designs_text3'),text_size: 10.sp,))
                                                               ),
                                                             ),
                                                             SizedBox(width: 5.w,),
                                                             Expanded(child: IconButton(onPressed: (){}, icon: Icon(
                                                               Icons.shopping_cart_outlined , color: AppColors.GrAY_DRAWER_COLOR, size: 20.r ,
                                                             )),)
                                                           ],
                                                         ),
                                                       ),
                                                     ],
                                                   ),
                                                 ),
                                               ),
                                               //replace this Container with your Card
                                               height: 400,
                                             ),
                                           ),
                                           Container(
                                             width: 120.h,
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
                                   }),
                             ),
                             SizedBox(height: 16.h),
                             Text_widget(textAlign:TextAlign.start, text: getTranslated(context, 'h_text7'), text_size: 14,text_color: Colors.black,),
                             SizedBox(
                               height: 210.h,
                               child: ListView.builder(
                                   scrollDirection: Axis.horizontal,
                                   shrinkWrap: true,
                                   itemBuilder: (context , index){
                                     return Padding(
                                       padding: const EdgeInsetsDirectional.only(end: 20),
                                       child: Stack(
                                         alignment: Alignment.topCenter,
                                         children: <Widget>[
                                           Padding(
                                             padding: EdgeInsets.only(top: circleRadius /7),
                                             child: Container(
                                               decoration: BoxDecoration(
                                                   color: Colors.white,
                                                   borderRadius: BorderRadius.circular(10.r),
                                                   boxShadow: [
                                                     BoxShadow(offset: Offset(0,0),
                                                         color: AppColors.GrAY_Light_Back_COLOR,
                                                         blurRadius: 6,
                                                         spreadRadius: 3
                                                     )
                                                   ]
                                               ),
                                               width: 140.w,
                                               child:Padding(
                                                 padding: const EdgeInsets.only(top: 105),
                                                 child: SingleChildScrollView(
                                                   child: Column(
                                                     // crossAxisAlignment: CrossAxisAlignment.stretch,
                                                     children: [
                                                       Text_widget(textAlign: TextAlign.start , text_size: 11, text: getTranslated(context, 'cart_text3'),text_color: Colors.black,),
                                                       SizedBox(height:3.h),
                                                       SizedBox(
                                                         width: 100.w,
                                                         child: Row(
                                                           mainAxisAlignment: MainAxisAlignment.center,
                                                           children: [
                                                             Text_widget(text_size: 12, text: '250 ${getTranslated(context, 'sr')!}',text_color: Colors.black,),
                                                             Spacer(),
                                                             Text_widget(text_size: 12, text: '250 ${getTranslated(context, 'sr')!}',text_color: AppColors.GrAY_DRAWER_COLOR,),
                                                           ],
                                                         ),
                                                       ),
                                                       SizedBox(height:10.h),
                                                       SizedBox(
                                                         width: 120.w,
                                                         child: Row(
                                                           children: [
                                                             Expanded(
                                                               child: Card(
                                                                   color: Colors.white,
                                                                   shape: RoundedRectangleBorder(
                                                                       borderRadius: BorderRadius.circular(10),
                                                                       side: BorderSide(
                                                                           width: 1,
                                                                           color: AppColors.BASIC_BROWN_COLOR
                                                                       )
                                                                   ),
                                                                   child: Align(
                                                                       alignment: AlignmentDirectional.center,
                                                                       child: Text_widget(text: getTranslated(context, 'my_designs_text3'),text_size: 10.sp,))
                                                               ),
                                                             ),
                                                             SizedBox(width: 5.w,),
                                                             Expanded(child: IconButton(onPressed: (){}, icon: Icon(
                                                               Icons.shopping_cart_outlined , color: AppColors.GrAY_DRAWER_COLOR, size: 20.r ,
                                                             )),)
                                                           ],
                                                         ),
                                                       ),
                                                     ],
                                                   ),
                                                 ),
                                               ),
                                               //replace this Container with your Card
                                               height: 400,
                                             ),
                                           ),
                                           Container(
                                             width: 120.h,
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
                                   }),
                             ),

                           ],
                         ),
                       ),
                     )
                   ],
                 ),
               ) : Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   Icon(
                     Icons.network_check,
                     color: AppColors.BASIC_BROWN_COLOR,
                     size: 90.r,),
                 //  SizedBox(height: 5.h,),
                   Text_widget(text: 'No Internet', text_size: 16.sp,text_color: Colors.black),
                //   Text('No Internet',style: TextStyle(fontSize: 18.sp),),
                   //Text('No Internet'),
                   //update the Network State
                 ],
               );
             }
             return Container(
               child: Center(
                 child: CircularProgressIndicator(),
               ),
             );
           },

        )


      ),
    );
  }

  /*
  Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: AppColors.Bar_COLOR,
        title: Text_widget(text_size: 16,text: getTranslated(context, 'home_page')! ,text_color: Colors.white,fontWeight: FontWeight.w400,),
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
           Stack(
             children: [
               Image.asset('images/man_card_home.png',fit: BoxFit.fill,
                 width: double.infinity,
                 height:300.h,
               ),
               Container(
                 height: 60.h,
                 width: double.infinity,
                 margin: EdgeInsetsDirectional.only(top:110.h),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                   mainAxisSize: MainAxisSize.min,
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.circle , color: AppColors.BASIC_BROWN_COLOR,size: 10,))),
                     Expanded(child:IconButton(onPressed: (){}, icon: Icon(Icons.circle , color: Colors.white,size: 10,)),),
                     Expanded(child:IconButton(onPressed: (){}, icon: Icon(Icons.circle , color: Colors.white,size: 10,)),),
                     Expanded(child:IconButton(onPressed: (){}, icon: Icon(Icons.circle , color: Colors.white,size: 10,)),),

                   ],
                 ),
               ),
               Container(
                 width: double.infinity,
                 height: 100.h,
                 margin: EdgeInsetsDirectional.only(top:170.h,start: 15.w),
                 child: SingleChildScrollView(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisSize: MainAxisSize.min,
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text_widget(text:getTranslated(context, 'cart_text3'), text_size: 12.sp),
                       SizedBox(height: 5.h,),
                       Text_widget(text: '250 ${getTranslated(context, 'sr')}', text_size: 12.sp , text_color: Colors.white,),
                       SizedBox(height: 10.h,),
                       SizedBox(
                         width: 120.w,
                         child: Row(
                           children: [
                             SizedBox(
                               height: 30.h,
                               width: 70.w,
                               child: Card(
                                   color: Colors.transparent,
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(10),
                                       side: BorderSide(
                                           width: 1,
                                           color: AppColors.BASIC_BROWN_COLOR
                                       )
                                   ),
                                   child: Align(
                                       alignment: AlignmentDirectional.center,
                                       child: Text_widget(text: getTranslated(context, 'my_designs_text3'),text_size: 10.sp,))
                               ),
                             ),
                             SizedBox(
                               width: 20.w,
                               child: IconButton(onPressed: (){}, icon: Icon(
                                 Icons.shopping_cart_outlined , color: AppColors.GrAY_DRAWER_COLOR, size: 20.r ,
                               )),
                             )
                           ],
                         ),
                       )

                     ],
                   ),
                 ),
               ),
             ],

           ),
        //    SizedBox(height: 15.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text_widget(textAlign:TextAlign.start, text:getTranslated(context, 'h_text1'), text_size: 14,text_color: Colors.black,),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 30.h,
                            width: 70.w,
                            child: Card(
                                color: AppColors.BASIC_BROWN_COLOR,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        width: 1,
                                        color: AppColors.BASIC_BROWN_COLOR
                                    )
                                ),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text_widget(text: getTranslated(context, 'h_text2'),text_size: 10.sp,text_color: Colors.black,))
                            ),
                          ),
                        ),
                        SizedBox(width: 3.w,),
                        Expanded(
                          child: SizedBox(
                            height: 30.h,
                            width: 70.w,
                            child: Card(
                                color: AppColors.GrAY_Light_Back_COLOR,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        width: 1,
                                        color: AppColors.BASIC_BROWN_COLOR
                                    )
                                ),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text_widget(text: getTranslated(context, 'h_text3'),text_size: 10.sp,))
                            ),
                          ),
                        ),
                        SizedBox(width: 3.w,),
                        Expanded(
                          child: SizedBox(
                            height: 30.h,
                            width: 70.w,
                            child: Card(
                                color: AppColors.GrAY_Light_Back_COLOR,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        width: 1,
                                        color: AppColors.BASIC_BROWN_COLOR
                                    )
                                ),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text_widget(text: getTranslated(context, 'h_text4'),text_size: 10.sp,))
                            ),
                          ),
                        ),
                        SizedBox(width: 3.w,),
                        Expanded(
                          child: SizedBox(
                            height: 30.h,
                            width: 70.w,
                            child: Card(
                                color: AppColors.GrAY_Light_Back_COLOR,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        width: 1,
                                        color: AppColors.BASIC_BROWN_COLOR
                                    )
                                ),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text_widget(text: getTranslated(context, 'h_text5'),text_size: 10.sp,))
                            ),
                          ),
                        ),
                        SizedBox(width: 3.w,),
                        Expanded(
                          child: SizedBox(
                            height: 30.h,
                            width: 70.w,
                            child: Card(
                                color: AppColors.GrAY_Light_Back_COLOR,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        width: 1,
                                        color: AppColors.BASIC_BROWN_COLOR
                                    )
                                ),
                                child: Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Text_widget(text: getTranslated(context, 'h_text6'),text_size: 10.sp,))
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    SizedBox(
                      height: 210.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context , index){
                        return Padding(
                          padding: const EdgeInsetsDirectional.only(end: 20),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: circleRadius /7),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                    boxShadow: [
                                      BoxShadow(offset: Offset(0,0),
                                      color: AppColors.GrAY_Light_Back_COLOR,
                                        blurRadius: 6,
                                        spreadRadius: 3
                                      )
                                    ]
                                  ),
                                  width: 140.w,
                                  child:Padding(
                                    padding: const EdgeInsets.only(top: 105),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Text_widget(textAlign: TextAlign.start , text_size: 11, text:getTranslated(context, 'cart_text3'),text_color: Colors.black,),
                                          SizedBox(height:3.h),
                                          SizedBox(
                                            width: 100.w,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text_widget(text_size: 12, text: '250 ${getTranslated(context, 'sr')!}',text_color: Colors.black,),
                                                Spacer(),
                                                Text_widget(text_size: 12, text: '250 ${getTranslated(context, 'sr')!}',text_color: AppColors.GrAY_DRAWER_COLOR,),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height:10.h),
                                          SizedBox(
                                            width: 120.w,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Card(
                                                      color: Colors.white,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10),
                                                          side: BorderSide(
                                                              width: 1,
                                                              color: AppColors.BASIC_BROWN_COLOR
                                                          )
                                                      ),
                                                      child: Align(
                                                          alignment: AlignmentDirectional.center,
                                                          child: Text_widget(text: getTranslated(context, 'my_designs_text3'),text_size: 10.sp,))
                                                  ),
                                                ),
                                                SizedBox(width: 5.w,),
                                                Expanded(child: IconButton(onPressed: (){}, icon: Icon(
                                                  Icons.shopping_cart_outlined , color: AppColors.GrAY_DRAWER_COLOR, size: 20.r ,
                                                )),)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  //replace this Container with your Card
                                  height: 400,
                                ),
                              ),
                              Container(
                                width: 120.h,
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
                      }),
                    ),
                    SizedBox(height: 16.h),
                    Text_widget(textAlign:TextAlign.start, text: getTranslated(context, 'h_text7'), text_size: 14,text_color: Colors.black,),
                    SizedBox(
                      height: 210.h,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context , index){
                            return Padding(
                              padding: const EdgeInsetsDirectional.only(end: 20),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: circleRadius /7),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10.r),
                                          boxShadow: [
                                            BoxShadow(offset: Offset(0,0),
                                                color: AppColors.GrAY_Light_Back_COLOR,
                                                blurRadius: 6,
                                                spreadRadius: 3
                                            )
                                          ]
                                      ),
                                      width: 140.w,
                                      child:Padding(
                                        padding: const EdgeInsets.only(top: 105),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Text_widget(textAlign: TextAlign.start , text_size: 11, text: getTranslated(context, 'cart_text3'),text_color: Colors.black,),
                                              SizedBox(height:3.h),
                                              SizedBox(
                                                width: 100.w,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text_widget(text_size: 12, text: '250 ${getTranslated(context, 'sr')!}',text_color: Colors.black,),
                                                    Spacer(),
                                                    Text_widget(text_size: 12, text: '250 ${getTranslated(context, 'sr')!}',text_color: AppColors.GrAY_DRAWER_COLOR,),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height:10.h),
                                              SizedBox(
                                                width: 120.w,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Card(
                                                          color: Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                              side: BorderSide(
                                                                  width: 1,
                                                                  color: AppColors.BASIC_BROWN_COLOR
                                                              )
                                                          ),
                                                          child: Align(
                                                              alignment: AlignmentDirectional.center,
                                                              child: Text_widget(text: getTranslated(context, 'my_designs_text3'),text_size: 10.sp,))
                                                      ),
                                                    ),
                                                    SizedBox(width: 5.w,),
                                                    Expanded(child: IconButton(onPressed: (){}, icon: Icon(
                                                      Icons.shopping_cart_outlined , color: AppColors.GrAY_DRAWER_COLOR, size: 20.r ,
                                                    )),)
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      //replace this Container with your Card
                                      height: 400,
                                    ),
                                  ),
                                  Container(
                                    width: 120.h,
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
                          }),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
   */
}
