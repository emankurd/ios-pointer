import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/ready_dress/product_without_mesure.dart';
import 'package:ios_pentor/ready_dress/ready_product.dart';
import 'package:ios_pentor/shared_pref/shared_pref_language.dart';
import 'package:ios_pentor/side_menue/cart_screen.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:ios_pentor/widgets/elevated_button_widget.dart';
import 'package:ios_pentor/widgets/text_widget.dart';

class AllDress extends StatefulWidget {
  const AllDress({Key? key}) : super(key: key);

  @override
  _AllDressState createState() => _AllDressState();
}

class _AllDressState extends State<AllDress> {
  final double circleRadius = 100.0;
  final double circleBorderWidth = 8.0;
  int count=250;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.GrAY_Light_Back_COLOR,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: AppColors.Bar_COLOR,
          iconTheme: IconThemeData(
            size: 30.h,
            color: Colors.white,
          ),
          title: Text_widget(text_size: 16,text:getTranslated(context, 'cart_text2') ,text_color: Colors.white,fontWeight: FontWeight.w400,),

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
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 30),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: AppColors.GrAY_Light_Back_COLOR,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color: AppColors.BASIC_BROWN_COLOR
                  )
                ),
                child: ExpansionTile(
                  iconColor: AppColors.BASIC_BROWN_COLOR,
                  trailing: Image.asset('images/menu.png'),
                  title: Text_widget(textAlign: TextAlign.start , text: getTranslated(context, 'cart_text8'), text_size: 16,text_color: AppColors.BASIC_BROWN_COLOR,),
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(bottom: 20),
                      child:  SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Divider(
                              thickness: 1,
                              color: AppColors.GrAY_DRAWER_COLOR,
                              endIndent: 20,
                              indent: 20,
                            ),
                            SizedBox(height: 5.h,),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(start: 15 , end: 15),
                              child: Text_widget(textAlign: TextAlign.start , text: getTranslated(context, 'cart_text8'), text_size: 16,text_color: AppColors.Sakiny_COLOR,),
                            ),
                          SizedBox(
                            height: 200.h,
                            child: ListView.builder(
                                itemCount: 6,
                                itemBuilder: (context,index){
                              return   SizedBox(
                                height: 30.h,
                                child: ListTile(
                                  // contentPadding: EdgeInsets.zero,
                                  title: Text_widget(textAlign: TextAlign.start, text:  getTranslated(context, 'cart_text8'),text_color: AppColors.GrAY_DRAWER_COLOR,text_size: 14.sp,),
                                  trailing:IconButton(
                                    icon: Icon(Icons.check_box_outline_blank , color: AppColors.GrAY_DRAWER_COLOR,size: 30,),
                                    onPressed: (){},
                                  ),

                                ),
                              );
                            }),
                          ),
                            SizedBox(height: 25.h,),
                            Center(
                              child: AppWidgetElevatedButton(
                                  height_size: 40.h,
                                  text: getTranslated(context, 'check_cart_text11')!, color_text: Colors.black,background_color:AppColors.BASIC_BROWN_COLOR, width_size: 170,onpressed: () {
                                Navigator.pop(context);
                              }),
                            )
                               ],
                        ),
                      ),
                    ),
                  ],

                ),
              ),
              SizedBox(height: 20.h,),
              GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 30,
                    childAspectRatio: AppPrefController().languageCode =='en'? 0.85.h: 0.75.h ,

                //     childAspectRatio: 0.8
      ), itemBuilder: (context , index){

                return Padding(
                  padding: const EdgeInsetsDirectional.only(end: 20),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ProductWithoutMesure();
                      }));
                    }
                    ,
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
                    )
                  ),
                );

              }),
            ],
            ),
          )

        )
      ),
    );
  }
}
