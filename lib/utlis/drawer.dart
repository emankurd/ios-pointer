import 'package:flutter/material.dart';
import 'package:ios_pentor/bn_nav_screen/home_screen.dart';
import 'package:ios_pentor/localization/language.dart';
import 'package:ios_pentor/localization/language_constants.dart';
import 'package:ios_pentor/login/signup_screen2.dart';
import 'package:ios_pentor/shared_pref/shared_pref_language.dart';
import 'package:ios_pentor/side_menue/my_addresses.dart';
import 'package:ios_pentor/side_menue/my_designs.dart';
import 'package:ios_pentor/side_menue/my_sizes.dart';
import 'package:ios_pentor/side_menue/profile_edit_screen.dart';
import 'package:ios_pentor/side_menue/profile_screen.dart';
import 'package:ios_pentor/side_menue/wallet_screen.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/widgets/drawer_list.dart';
import 'package:ios_pentor/widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../main.dart';

class DrawerWidget extends StatefulWidget {


  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  String? imageUrl;
  String? name;
  bool isPressed=false;

  @override
  Widget build(BuildContext context) {


    print('image : $imageUrl , name: $name');
    return Drawer(

      child: ListView(
        padding: EdgeInsets.only(top: 70.h , right: 20.w,left: 20.w),
          children: [
        SizedBox(

          child: ( imageUrl != null) ? CircleAvatar(
            //
            radius: 100.r,
            //radius: 100,
            backgroundImage:NetworkImage(imageUrl!)  ,
          ) :  Image.asset('images/Icon_user.png' , height: 150.h , width: 150.w, fit: BoxFit.contain,),
        ),
        SizedBox(height: 50.h,),
        drawerlistTile(title: getTranslated(context, 'drawer_text1')!,icon: Icon(Icons.person_outline), ontap: () {
          Navigator.push(context , MaterialPageRoute(builder: (context){
            return  ProfileScreen();
          }
          )
          );
        }),
            drawerlistTile(title:  getTranslated(context, 'drawer_text2')!,widget: Image.asset('images/my_design.png',height: 20.h,width: 20.w, ), ontap: () {
              Navigator.push(context , MaterialPageRoute(builder: (context){
                return MyDesigns();
              }
              )
              );
            }),
            drawerlistTile(title:  getTranslated(context, 'drawer_text3')!,widget: Image.asset('images/tshirt_icon.png',height: 20.h,width: 20.w, ), ontap: () {
              Navigator.push(context , MaterialPageRoute(builder: (context){
                return MySizes();
              }
              )
              );
            }),
            drawerlistTile(title: getTranslated(context, 'drawer_text4')!,widget: Image.asset('images/preorder_icon.png',height: 20.h,width: 20.w, ), ontap: () {
              Navigator.push(context , MaterialPageRoute(builder: (context){
                return HomeScreen();
              }
              )
              );
            }),

            drawerlistTile(title: getTranslated(context, 'drawer_text5')!,widget: Image.asset('images/portfolio_icon.png',height: 20.h,width: 20.w, ), ontap: () {
              Navigator.push(context , MaterialPageRoute(builder: (context){
                return ProtoFileScreen();
              }
              )
              );
            }),
            drawerlistTile(title: getTranslated(context, 'drawer_text6')!,icon: Icon(Icons.location_on_sharp), ontap: () {
              Navigator.push(context , MaterialPageRoute(builder: (context){
                return MyAddresses();
              }
              )
              );
            }),
            drawerlistTile(title: AppPrefController().languageCode == 'en' ? getTranslated(context, 'drawer_text7')! : "English",icon: Icon(Icons.language_outlined), ontap: () {
              if(AppPrefController().languageCode == 'en'){
                _changeLanguage(Language.languageList().last);
                getLanguageCode('languageCode').then((value) {
                  AppPrefController().setLanguage(value.toString());
                  print(value.toString());
                });

              }else
                {
                  _changeLanguage(Language.languageList().first);
                  getLanguageCode('languageCode').then((value) {
                    AppPrefController().setLanguage(value.toString());
                    print(value.toString());
                  });
                }


            }),

        drawerlistTile(title: getTranslated(context, 'drawer_text8')!, icon: Icon(Icons.logout),ontap: () async{
          Navigator.push(context , MaterialPageRoute(builder: (context){
            return SignUpScreen2();
          }
          )
          );
        }
        ),
            SizedBox(height: 30.h,),

            Text_widget(text: getTranslated(context, 'drawer_text9')!, text_size: 13.sp),
            SizedBox(height: 15.h,),

          ]),
    );
  }
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    MyApp.setLocale(context, _locale);
  }

}
