import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'check_cart.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final double circleRadius = 100.0;
  final double circleBorderWidth = 8.0;
  int count=250;
  final GlobalKey<ScaffoldState> _scaffoldKey2 = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey2,
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.GrAY_Light_Back_COLOR,
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(
            size: 30,
            color: Colors.white,
          ),
          title:Text_widget(textAlign: TextAlign.start , text: getTranslated(context, 'cart_text1'), text_size: 18),
          centerTitle: true,
          actionsIconTheme: IconThemeData(
            size: 20,
          ),
          leading: IconButton(
            icon: Padding(
              padding: EdgeInsetsDirectional.only(start: 10.h),
              child: Icon(Icons.menu),
            ),
            onPressed: (){
              _scaffoldKey2.currentState!.openDrawer();
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: GridView.builder(
                  shrinkWrap: true,
                  //physics: ScrollPhysics(),
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 30,
                        childAspectRatio: 0.55.h


                    ), itemBuilder: (context , index){

                  return Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: circleRadius /7),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 200,
                          child:Padding(
                            padding: const EdgeInsets.only(top: 105),
                            child: SingleChildScrollView(
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text_widget( text_size: 12, text: '$count ',text_color: Colors.red,),
                                      Text_widget(text_size: 12, text: '${getTranslated(context, 'sr')!}',text_color: Colors.red,),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 35,
                                    width: 80,
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
                                              child: Text_widget( text_size: 16, text: '+',text_color: Colors.black,)),
                                          SizedBox(width: 8,),
                                          Text_widget( text_size: 14, text: '|',text_color: Colors.black,),
                                          SizedBox(width: 8,),
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
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    child: Row(
                                      children: [
                                        Text_widget(text_size: 11, text:getTranslated(context, 'cart_text2'),text_color: Colors.black,),
                                        Spacer(),
                                        Text_widget(text_size: 11, text:getTranslated(context, 'cart_text3'),text_color: AppColors.GrAY_DRAWER_COLOR,),

                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    child: Row(
                                      children: [
                                        Text_widget(text_size: 11, text:getTranslated(context, 'cart_text4'),text_color: Colors.black,),
                                        Spacer(),
                                        Text_widget(text_size: 11, text: getTranslated(context, 'saved_sizes_text1'),text_color: AppColors.GrAY_DRAWER_COLOR,),

                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    child: SingleChildScrollView(
                                      child: Row(
                                        children: [
                                          SizedBox(
                                              width:50,
                                              child: Text_widget(text_size: 11, text:getTranslated(context, 'cart_text5'),text_color: Colors.black,)),
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
                                                child: Text_widget(text_size: 12.sp, text: '52',text_color: AppColors.GrAY_DRAWER_COLOR,),
                                              )),
                                          SizedBox(width: 15.w,),
                                          Image.asset('images/delete_gray.png',height: 18,width: 18, fit: BoxFit.cover,),

                                        ],
                                      ),
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
                        width: 120,
                        height: 120,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text_widget(text_size: 18, text: getTranslated(context, 'cart_text6'),text_color: AppColors.GrAY_DRAWER_COLOR,),
                  Text_widget(text_size: 18, text: '250 ${getTranslated(context, 'sr')}',text_color: Colors.black,),
                ],
              ),
              SizedBox(height: 30,),
              AppWidgetElevatedButton(
                side_color:AppColors.Green_COLOR ,
                text: getTranslated(context, 'cart_text7')!, onpressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CheckCartScreen();
                }));
              },
              color_text: Colors.white,
                width_size: 150,
                background_color: AppColors.Green_COLOR,
              ),
              SizedBox(height: 30,),

            ],

          ),
        ),

      ),
    );
  }


}
