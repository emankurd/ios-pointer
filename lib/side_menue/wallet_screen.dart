
import 'package:flutter/material.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/side_menue/cart_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_pentor/side_menue/tab_bar_wallet/card_details.dart';
import 'package:ios_pentor/side_menue/tab_bar_wallet/wallet.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:ios_pentor/widgets/text_widget.dart';

class ProtoFileScreen extends StatefulWidget {

  @override
  _ProtoFileScreenState createState() => _ProtoFileScreenState();
}

class _ProtoFileScreenState extends State<ProtoFileScreen> with SingleTickerProviderStateMixin {

  //late TabController _tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey8 = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  //  _tabController = TabController(vsync: this, length: 2);


  }
  @override
  void dispose() {

    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // int value=-1;
    //
    // if(value != -1){
    //   final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    //   if (arguments != null) {
    //     value = arguments['value'];
    //     print('value: $value');
    //   }
    // }
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          key: _scaffoldKey8,
          backgroundColor: AppColors.GrAY_Light_Back_COLOR,
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: Padding(
                padding: EdgeInsetsDirectional.only(start: 10),
                child: Icon(Icons.menu),
              ),
              onPressed: (){
                _scaffoldKey8.currentState!.openDrawer();
              },

            ),
            iconTheme: IconThemeData(
              size: 30,
              color: Colors.white,
            ),
            title:Text_widget(textAlign: TextAlign.start , text:getTranslated(context, 'Portfolio_text2'), text_size: 16.sp),
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
          body:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
             SizedBox(height: 40.h),
              SizedBox(
                height: 50.h,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: AppColors.GrAY_Light_Back_COLOR,
                    bottom: TabBar(
                    //  controller: _tabController,
                    //  isScrollable: true,
                      indicatorColor: AppColors.BASIC_BROWN_COLOR,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor:AppColors.BASIC_BROWN_COLOR ,
                      labelStyle: TextStyle(
                        fontSize: 20
                      ),

                      unselectedLabelStyle: TextStyle(
                          fontSize: 20
                      ),
                      unselectedLabelColor:AppColors.GrAY_DRAWER_COLOR ,
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
                              text: getTranslated(context, 'Portfolio_text2')
                            //child: Text_widget( text: 'Father',text_size: 20),
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                          child: Tab(
                              text:getTranslated(context, 'Portfolio_text3')
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

              // create widgets for each tab bar here
              Expanded(
                child: TabBarView(
                  children: [
                   WalletScreen(),
                    CardDetails()
                  ],
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }



}
