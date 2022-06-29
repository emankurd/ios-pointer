
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/side_menue/tab_bar_profile/father.dart';
import 'package:ios_pentor/side_menue/tab_bar_profile/sons.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:ios_pentor/widgets/text_widget.dart';

import 'cart_screen.dart';

class ProfileScreen extends StatefulWidget {

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  // DateTime? _selectedDate;
  String? dob;
  int city_id= 0;
  String? chooseCity;
  String? cityId;
  String? gender_controller;
  final GlobalKey<ScaffoldState> _scaffoldKey6 = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }
  @override
  void dispose() {

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          key: _scaffoldKey6,
          backgroundColor: AppColors.GrAY_Light_Back_COLOR,
          appBar: AppBar(
            backgroundColor: Colors.black,
            iconTheme: IconThemeData(
              size: 30,
              color: Colors.white,
            ),
            leading: IconButton(
              icon: Padding(
                padding: EdgeInsetsDirectional.only(start: 10),
                child: Icon(Icons.menu),
              ),
              onPressed: (){
                _scaffoldKey6.currentState!.openDrawer();
              },

            ),
            title:Text_widget(textAlign: TextAlign.start , text: getTranslated(context, 'profile_text1'), text_size: 16),

            centerTitle: true,
            actionsIconTheme: IconThemeData(
              size: 25,
            ),
            actions: [
              Padding(
                  padding: EdgeInsetsDirectional.only(end: 18),
                  child: IconButton(
                    icon: Icon(Icons.search) ,
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
                  )),
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
          body:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
             SizedBox(height: 40.h),
              SizedBox(
                  height: 150.h, width: 150.w,
                  child: Image.asset('images/profile_icon.png' ,fit: BoxFit.fitHeight,)
              ),
              SizedBox(height: 25,),

              SizedBox(
                height: 50.h,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
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
                          fontSize: 18
                      ),

                      unselectedLabelStyle: TextStyle(
                          fontSize: 18
                      ),

                      tabs: [
                        SizedBox(
                          height: 40.h,
                          child: Tab(
                              text: getTranslated(context, 'saved_sizes_text1')
                            //child: Text_widget( text: 'Father',text_size: 20),
                          ),
                        ),
                        SizedBox(
                          height: 40.h,

                          child: Tab(
                              text: getTranslated(context, 'profile_text2')
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
                    // first tab bar view widget
                    FatherProfileScreen(),
                    SonsProfileScreen(),
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
