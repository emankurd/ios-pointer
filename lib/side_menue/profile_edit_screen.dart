
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/side_menue/tab_bar_profile/father.dart';
import 'package:ios_pentor/side_menue/tab_bar_profile/father_edit.dart';
import 'package:ios_pentor/side_menue/tab_bar_profile/sons.dart';
import 'package:ios_pentor/side_menue/tab_bar_profile/sons_edit.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/text_widget.dart';

import 'cart_screen.dart';

class ProfileEditScreen extends StatefulWidget {

  @override
  _ProfileEditScreenState createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  ImagePicker _imagePicker=ImagePicker();
  PickedFile? _pickedFile;
  late TextEditingController firstName_controller;
  late TextEditingController secondName_controller;
  late TextEditingController mobile_controller;
  late TextEditingController email_controller;
  late TextEditingController  password_controller;
  late TextEditingController dob_controller;
  final GlobalKey<ScaffoldState> _scaffoldKey7= new GlobalKey<ScaffoldState>();

  // DateTime? _selectedDate;
  String? dob;
  int city_id= 0;
  String? chooseCity;
  String? cityId;
  String? gender_controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firstName_controller=TextEditingController();
    secondName_controller=TextEditingController();
    mobile_controller=TextEditingController();
    email_controller=TextEditingController();
     password_controller=TextEditingController();
    dob_controller=TextEditingController();

  }
  @override
  void dispose() {
   firstName_controller.dispose();
   secondName_controller.dispose();
   mobile_controller.dispose();
   email_controller.dispose();
    password_controller.dispose();
   dob_controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          key: _scaffoldKey7,
          backgroundColor: AppColors.GrAY_Light_Back_COLOR,
          appBar: AppBar(
            backgroundColor: Colors.black,
            iconTheme: IconThemeData(
              size: 30,
              color: Colors.white,
            ),
            title:Text_widget(textAlign: TextAlign.start , text: getTranslated(context, 'profile_text1'), text_size: 16),

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
                _scaffoldKey7.currentState!.openDrawer();
              },

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
          body:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
             SizedBox(height: 40),
              SizedBox(
                  height: 150, width: 150,
                  child: _pickedFile!= null ? CircleAvatar(

                      child: CircleAvatar(
                          radius: 120,
                          backgroundImage: FileImage(File(_pickedFile!.path))
                      )) : GestureDetector(
                      onTap: () async => await pickImage(),
                      child: Image.asset('images/edit_prfile_icon.png' ,fit: BoxFit.fitHeight,)
                  )
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
                    FatherProfileEditScreen(),
                    SonsEditProfileScreen(),
                  ],
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
  Future<void> pickImage() async {
    _pickedFile = (await _imagePicker.pickImage(source: ImageSource.gallery)) as PickedFile?;
    if (_pickedFile != null) {
      print('image was picked');
      setState(() {});
    }
  }


}
