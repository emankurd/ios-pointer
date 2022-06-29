import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/shared_pref/shared_pref_language.dart';
import 'package:ios_pentor/side_menue/my_addresses.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/widgets/text_widget.dart';

import 'cart_screen.dart';
class MyDesigns extends StatefulWidget {
  const MyDesigns({Key? key}) : super(key: key);

  @override
  _MyDesignsState createState() => _MyDesignsState();
}

class _MyDesignsState extends State<MyDesigns> {
  final double circleRadius = 100.0.r;
  final double circleBorderWidth = 8.0.r;
  final GlobalKey<ScaffoldState> _scaffoldKey9 = new GlobalKey<ScaffoldState>();

  int count=250;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey9,
        backgroundColor: AppColors.GrAY_Light_Back_COLOR,
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(
            size: 30,
            color: Colors.white,
          ),
          title:Text_widget(textAlign: TextAlign.start , text: getTranslated(context, 'drawer_text2'), text_size: 16.sp),
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

             _scaffoldKey9.currentState!.openDrawer();
            },

          ),
          actions: [
            IconButton(
              icon: Padding(
                padding: EdgeInsetsDirectional.only(start: 20),
                child: Icon(Icons.search , ),
              ) ,
              onPressed: () {

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
        body:Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
              shrinkWrap: true,
              //physics: ScrollPhysics(),
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  childAspectRatio: AppPrefController().languageCode =='en'? 0.85.h: 0.8.h ,

              ), itemBuilder: (context , index){

            return  Stack(
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
                            Text_widget(textAlign: TextAlign.start , text_size: 11, text: getTranslated(context, 'my_designs_text3'),text_color: Colors.black,),
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
                            Row(

                              children: [
                                SizedBox(width: 10.w,),

                                SizedBox(
                                  height: 30.h,
                                  width: 70.w,
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
                                          child: Text_widget(text:getTranslated(context, 'my_designs_text3'),text_size: 10.sp,))
                                  ),
                                ),
                             //   SizedBox(width: 5.w,),
                                Expanded(child: IconButton(onPressed: (){}, icon: Icon(
                                  Icons.shopping_cart_outlined , color: AppColors.GrAY_DRAWER_COLOR, size: 20.r ,
                                )),)
                              ],
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
            );

          }),
        ),

      ),
    );
  }


}
