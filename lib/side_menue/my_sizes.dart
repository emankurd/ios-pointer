import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/shared_pref/shared_pref_language.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/widgets/text_widget.dart';

import 'cart_screen.dart';
class MySizes extends StatefulWidget {
  const MySizes({Key? key}) : super(key: key);

  @override
  _MySizesState createState() => _MySizesState();
}

class _MySizesState extends State<MySizes> {
  final double circleRadius = 100.0;
  final double circleBorderWidth = 8.0;
  int count=250;
  final GlobalKey<ScaffoldState> _scaffoldKey10 = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.GrAY_Light_Back_COLOR,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              _scaffoldKey10.currentState!.openDrawer();
            },

          ),

          title:Text_widget(textAlign: TextAlign.start , text:getTranslated(context, 'drawer_text3'), text_size: 16.sp),
          centerTitle: true,
          actionsIconTheme: IconThemeData(
            size: 25,
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
                padding: EdgeInsetsDirectional.only(end: 10),
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
        body:Padding(
          padding: const EdgeInsets.all(30),
          child: GridView.builder(
              shrinkWrap: true,
              //physics: ScrollPhysics(),
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 30,
                  childAspectRatio: AppPrefController().languageCode =='en'? 0.6.h: 0.55.h ,

              ), itemBuilder: (context , index){

            return Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: circleRadius /7),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    width: 200,
                    child:Padding(
                      padding: const EdgeInsets.only(top: 105),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text_widget( text_size: 12.sp, text: '$count ',text_color: Colors.red,),
                              Text_widget(text_size: 12.sp, text: ' SR',text_color: Colors.red,),
                            ],
                          ),
                          SizedBox(
                            height: 35.h,
                            width: 80.w,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      width: 1,
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
                                  Text_widget( text_size: 14, text: '|',text_color: Colors.black,),
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
                                Text_widget(text_size: 11.sp, text: getTranslated(context, 'cart_text2'),text_color: Colors.black,),
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
                                    width: 50.h,
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
                                SizedBox(width: 8.w,),
                                Image.asset('images/delete_gray.png',height: 18.h,width: 17.w, fit: BoxFit.cover,),

                              ],
                            ),
                          ),


                        ],
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
            );
            //   Stack(
            //   children: [
            //     Container(
            //       color: Colors.white,
            //       height: 400,
            //     //  width: 150,
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.stretch,
            //         children: [
            //           Text_widget(text: 'text', text_size: 16),
            //           Text_widget(text: 'text', text_size: 16),
            //
            //         ],
            //       ),
            //     ),
            //     Image.asset('images/man_card.png',height: 95, width: 95,fit: BoxFit.cover,),
            //   ],
            //
            // );
          }),
        ),

      ),
    );
  }


}
