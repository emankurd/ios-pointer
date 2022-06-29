import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ios_pentor/bn_nav_screen/home_screen.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress12.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress12_screnns/book_screen.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress12_screnns/enter_your_size.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress12_screnns/saved_sizes.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress13.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress14.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress2.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress4.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress5.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress7.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress8.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress9.dart';
import 'package:ios_pentor/login/login_screen1.dart';
import 'package:ios_pentor/main2_screen.dart';
import 'package:ios_pentor/shared_pref/shared_pref_language.dart';
import 'package:ios_pentor/side_menue/my_addresses.dart';
import 'package:ios_pentor/side_menue/profile_edit_screen.dart';
import 'package:ios_pentor/side_menue/wallet_screen.dart';
import 'package:ios_pentor/wifi/connectivity_provider.dart';
import 'package:ios_pentor/wifi/network_binding.dart';
import 'package:provider/provider.dart';
import 'bn_nav_screen/profitional_dress/prof_dress10.dart';
import 'bn_nav_screen/profitional_dress/prof_dress11.dart';
import 'bn_nav_screen/profitional_dress/prof_dress12_screnns/masurements_rep .dart';
import 'bn_nav_screen/profitional_dress/prof_dress3.dart';
import 'bn_nav_screen/profitional_dress/prof_dress6.dart';
import 'localization/demo_localization.dart';
import 'localization/language_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppPrefController().initPref();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.setLocale(newLocale);
  }

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  Locale? _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }
  @override
  void initState() {
    super.initState();
    getLanguageCode('languageCode').then((value) {
      AppPrefController().setLanguage(value.toString());
      print(value.toString());
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        this._locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375 , 812),
      builder:(){
        return MultiProvider(providers:[
          ChangeNotifierProvider(create: (context) => ConnectivityProvider() ,
          child: HomeScreen(),
          )
        ],
          child: MaterialApp(
            debugShowMaterialGrid: false,
            locale: _locale,
            supportedLocales: [
              Locale("en", "US"),
              Locale("ar", "SA"),
            ],
            localizationsDelegates: [
              DemoLocalization.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            localeResolutionCallback: (locale, supportedLocales) {
              for (var supportedLocale in supportedLocales) {
                if (supportedLocale.languageCode == locale!.languageCode &&
                    supportedLocale.countryCode == locale.countryCode) {
                  return supportedLocale;
                }
              }
              return supportedLocales.first;
            },
            debugShowCheckedModeBanner: false,
            initialRoute: '/login_screen_1',
            routes: {
              //   '/home_page': (context) => HomePage(),

              '/login_screen_1': (context) => LoginScreen1(),
              '/main2_screen': (context) => Main2Screen(),
              '/protofile_screen': (context) => ProtoFileScreen(),
              '/prof_dress2': (context) => Profetional_dress2(),
              '/prof_dress3': (context) => Profetional_dress3(),
              '/prof_dress4': (context) => Profetional_dress4(),
              '/prof_dress5': (context) => Profetional_dress5(),
              '/prof_dress6': (context) => Profetional_dress6(),
              '/prof_dress7': (context) => Profetional_dress7(),
              '/prof_dress8': (context) => Profetional_dress8(),
              '/prof_dress9': (context) => Profetional_dress9(),
              '/prof_dress10': (context) => Profetional_dress10(),
              '/prof_dress11': (context) => Profetional_dress11(),
              '/prof_dress12': (context) => Profetional_dress12(),
              '/prof_dress13': (context) => Profetional_dress13(),
              '/prof_dress14': (context) => Profetional_dress14(),
              '/saved_size': (context) => SavedSizeScreen(),
              '/book_screen': (context) => BookScreen(),
              '/my_address_screen': (context) => MyAddresses(),
              '/masurements_screen': (context) => MeasurementsRep(),
              '/enter_size_screen': (context) => EnterYourSize(),
              '/profile_edit': (context) => ProfileEditScreen(),


            }

     //     home: HomeScreen(),
          ),

        );
        return GetMaterialApp(
            initialBinding: NetworkBinding() ,
            home: HomeScreen(),
            // locale: _locale,
            // supportedLocales: [
            //   Locale("en", "US"),
            //   Locale("ar", "SA"),
            // ],
            // localizationsDelegates: [
            //   DemoLocalization.delegate,
            //   GlobalMaterialLocalizations.delegate,
            //   GlobalWidgetsLocalizations.delegate,
            //   GlobalCupertinoLocalizations.delegate,
            // ],
            // localeResolutionCallback: (locale, supportedLocales) {
            //   for (var supportedLocale in supportedLocales) {
            //     if (supportedLocale.languageCode == locale!.languageCode &&
            //         supportedLocale.countryCode == locale.countryCode) {
            //       return supportedLocale;
            //     }
            //   }
            //   return supportedLocales.first;
            // },
            // debugShowCheckedModeBanner: false,
            // initialRoute: '/login_screen_1',
            // routes: {
            //   //   '/home_page': (context) => HomePage(),
            //
            //   '/login_screen_1': (context) => LoginScreen1(),
            //   '/main2_screen': (context) => Main2Screen(),
            //   '/protofile_screen': (context) => ProtoFileScreen(),
            //   '/prof_dress2': (context) => Profetional_dress2(),
            //   '/prof_dress3': (context) => Profetional_dress3(),
            //   '/prof_dress4': (context) => Profetional_dress4(),
            //   '/prof_dress5': (context) => Profetional_dress5(),
            //   '/prof_dress6': (context) => Profetional_dress6(),
            //   '/prof_dress7': (context) => Profetional_dress7(),
            //   '/prof_dress8': (context) => Profetional_dress8(),
            //   '/prof_dress9': (context) => Profetional_dress9(),
            //   '/prof_dress10': (context) => Profetional_dress10(),
            //   '/prof_dress11': (context) => Profetional_dress11(),
            //   '/prof_dress12': (context) => Profetional_dress12(),
            //   '/prof_dress13': (context) => Profetional_dress13(),
            //   '/prof_dress14': (context) => Profetional_dress14(),
            //   '/saved_size': (context) => SavedSizeScreen(),
            //   '/book_screen': (context) => BookScreen(),
            //   '/my_address_screen': (context) => MyAddresses(),
            //   '/masurements_screen': (context) => MeasurementsRep(),
            //   '/enter_size_screen': (context) => EnterYourSize(),
            //   '/profile_edit': (context) => ProfileEditScreen(),
            //
            //
            // }

        );
      },

    );
  }
}
