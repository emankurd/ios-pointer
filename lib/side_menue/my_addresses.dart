import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';

import 'cart_screen.dart';
class MyAddresses extends StatefulWidget {
  const MyAddresses({Key? key}) : super(key: key);

  @override
  _MyAddressesState createState() => _MyAddressesState();
}

class _MyAddressesState extends State<MyAddresses> {
  final double circleRadius = 100.0;
  final double circleBorderWidth = 8.0;
  int count=250;
  final GlobalKey<ScaffoldState> _scaffoldKey3 = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey3,
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.GrAY_Light_Back_COLOR,
        appBar: AppBar(
          backgroundColor: Colors.black,

          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: (){
          //     scaffoldKey.currentState!.openDrawer();
          //   },
          //
          // ),
          iconTheme: IconThemeData(
            size: 30,
            color: Colors.white,
          ),
          title:Text_widget(textAlign: TextAlign.start , text: getTranslated(context, 'my_address_text1'), text_size: 18),
          centerTitle: true,
          actionsIconTheme: IconThemeData(
            size: 25,
          ),
          leading: IconButton(
            icon: Padding(
              padding: EdgeInsetsDirectional.only(start: 10),
              child: Icon(Icons.menu),
            ),
            onPressed: (){
              _scaffoldKey3.currentState!.openDrawer();
            },

          ),
          actions: [
            IconButton(
              icon: Padding(
                padding: EdgeInsetsDirectional.only(start: 20),
                child: Icon(Icons.search , ),
              ) ,
              onPressed: () {
                setState(() {
                  //  show_search=!show_search;
                  //  print('counter: $counter');

                }
                );
                // if(show_search){
                //   hideWidget();
                // }else
                // {
                //   showWidget();
                // }
                //   await _showMyDialog();
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
        body:Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(right: 15, left: 15, bottom: 15,top: 30),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder:(context , index){
                    return Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.location_on_sharp) , color: AppColors.GrAY_DRAWER_COLOR, iconSize: 50,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text_widget(text:  getTranslated(context, 'uber_text3'), text_size: 20, text_color: AppColors.GrAY_DRAWER_COLOR,),
                                SizedBox(height: 10,),
                                Text_widget(text: getTranslated(context, 'uber_text3'), text_size: 14 , text_color: Colors.grey.shade400,),
                              ],
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.delete_sweep , size: 30, color: AppColors.GrAY_DRAWER_COLOR,) , color: AppColors.GrAY_DRAWER_COLOR, iconSize: 50,),

                        ],
                      ),
                    );
                  },


                )
            ),
            InkWell(
              onTap: (){
                showAlertDialog(context);                // Card_proto_Screen();
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
    );
  }
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      insetPadding: EdgeInsets.all(5),
      titlePadding: EdgeInsets.only(top: 20),
      title: Padding(
          padding: EdgeInsetsDirectional.only(start: 20),
          child: Text_widget(textAlign: TextAlign.start,text: getTranslated(context, 'uber_text2'), text_size: 16 ,text_color: AppColors.BASIC_BROWN_COLOR)),
      content: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       //   mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 160,
              child: ListTile(
                  minLeadingWidth:5,
                  horizontalTitleGap: 0,
                leading: Icon(Icons.location_on_sharp, size: 25,),
                title: Text_widget(text: getTranslated(context, 'uber_text3'), text_color: AppColors.GrAY_DRAWER_COLOR, text_size: 14,)
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      SizedBox(
                          height:35,
                          child: Text_widget(text: getTranslated(context, 'uber_text4'), text_size: 14 , fontWeight: FontWeight.w400,)),
                      SizedBox(
                        height:30,
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
                SizedBox(width:20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height:35,
                          child: Text_widget(text: getTranslated(context, 'uber_text5'), text_size: 14 , text_color: AppColors.GrAY_DRAWER_COLOR,)),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height:35,
                          child: Text_widget(text:getTranslated(context, 'bar_text6'), text_size: 14 , text_color: AppColors.GrAY_DRAWER_COLOR,)),
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
                    height:35,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 10),
                      child: Text_widget(textAlign:TextAlign.start ,text: getTranslated(context, 'bar_text8'), text_size: 14 , text_color: AppColors.GrAY_DRAWER_COLOR,),
                    )),
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
            SizedBox(height:15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height:35,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 10),
                      child: Text_widget(textAlign:TextAlign.start ,text: getTranslated(context, 'check_cart_text1'), text_size: 14 , text_color: AppColors.GrAY_DRAWER_COLOR,),
                    )),
               Row(
                 children: [
                   Expanded(
                     child: ListTile(
                         minLeadingWidth:10,

                         horizontalTitleGap: 0,
                         leading: Icon(Icons.home_filled, size: 25,),
                         title: Text_widget(text: getTranslated(context, 'check_cart_text2'), text_color: AppColors.GrAY_DRAWER_COLOR, text_size: 12,)
                     ),
                   ),
                   Expanded(child: ListTile(
                       minLeadingWidth:10,

                       horizontalTitleGap: 0,
                       leading: Icon(Icons.work, size: 25,),
                       title: Text_widget(text:getTranslated(context, 'check_cart_text3'), text_color: AppColors.GrAY_DRAWER_COLOR, text_size: 12,)
                   ),),
                   Expanded(
                     child: ListTile(
                         minLeadingWidth:10,
                         horizontalTitleGap: 0,
                         leading: Icon(Icons.location_on_sharp, size: 25,),
                         title: Text_widget(text: getTranslated(context, 'check_cart_text4'), text_color: AppColors.GrAY_DRAWER_COLOR, text_size: 12,)
                     ),
                   )

                 ],
               )
              ],
            ),
            SizedBox(height: 25,),

            AppWidgetElevatedButton(
              text: getTranslated(context, 'my_address_text2')!, onpressed: (){
              Navigator.pop(context);
            },
              color_text: Colors.black,
              background_color: AppColors.BASIC_BROWN_COLOR,
              border_size: 15.r,
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

}
