import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ios_pentor/bn_nav_screen/home_screen.dart';
import 'package:ios_pentor/bn_nav_screen/profitional_dress/prof_dress1.dart';
import 'package:ios_pentor/ready_dress/all_dress.dart';
import 'package:ios_pentor/ready_dress/ready_product.dart';
import 'package:ios_pentor/utlis/app_colors.dart';
import 'package:ios_pentor/utlis/drawer.dart';
import 'package:ios_pentor/widgets/bn_screens.dart';
import 'package:ios_pentor/wifi/getx_network_manager.dart';
import 'localization/language_constants.dart';
class Main2Screen extends StatefulWidget {
  const Main2Screen({Key? key}) : super(key: key);

  @override
  _Main2ScreenState createState() => _Main2ScreenState();
}

class _Main2ScreenState extends State<Main2Screen> {
  late List<BottomNavigationScreen> _screens ;
  int _selectedItemIndex = 0;
  bool isConnected=false;
  String _title='Home';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isConnect();

  }
  @override
  Widget build(BuildContext context) {
    print('is Connected: $isConnected}');

    _screens= <BottomNavigationScreen>[
      BottomNavigationScreen(title: getTranslated(context, 'home_page')!, widget: HomeScreen()),
      BottomNavigationScreen(title: getTranslated(context, 'main2_screen_bar2')!, widget: AllDress()),
      BottomNavigationScreen(title: getTranslated(context, 'main2_screen_bar3')!, widget: ReadyProduct()),
      BottomNavigationScreen(title: getTranslated(context, 'main2_screen_bar4')!, widget: Profetional_dress1()),

    ];
    return SafeArea(
            child: WillPopScope(
        onWillPop: () => Future.value(false) ,
        child: Scaffold(
            backgroundColor: Colors.white,
         //   drawer: DrawerWidget(),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _selectedItemIndex,
              onTap: (int selectedItemIndex) {
                setState(() {
                  _selectedItemIndex = selectedItemIndex;
                });

                setState(() {
                  if (_selectedItemIndex == 0) {
                    _title =getTranslated(context, 'home_page')!;
                  } else if (_selectedItemIndex ==1) {
                    _title =  getTranslated(context, 'cart_text2')!;
                  }else if (_selectedItemIndex ==2) {
                    _title =  getTranslated(context, 'main2_screen_bar3')!;
                  }
                  else if (_selectedItemIndex ==3) {
                    _title =  getTranslated(context, 'main2_screen_bar4')!;
                  }

                });
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColors.BASIC_BROWN_COLOR,
              unselectedItemColor: Colors.grey,

              elevation: 4,
              items: [
                BottomNavigationBarItem(

                  icon: Icon(Icons.home_outlined),
                  label: _screens[0].title,
                  //  activeIcon: Icon(Icons.home),
                  // backgroundColor: Colors.red,
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('images/arab.png'),
                  label: _screens[1].title,

                  //  activeIcon: Icon(Icons.person),

                ),
                BottomNavigationBarItem(
                  icon: Image.asset('images/makina_icon.png'),
                //  icon: Icon(Icons.home_outlined),
                  label: _screens[2].title,

                  //activeIcon: Icon(Icons.shopping_cart),
                  //   backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('images/makina_icon.png'),
                  label: _screens[3].title,

                  //activeIcon: Icon(Icons.local_offer_outlined),
                  // backgroundColor: Colors.red,
                ),


              ],
            ),
          drawer: DrawerWidget(),
          body: _screens.elementAt(_selectedItemIndex).widget,
        ),
      ),
    );
  }

  Future<void> isConnect() async{
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi) {
      isConnected=true;
      //  return true;
      // I am connected to a mobile network.
    } else if (connectivityResult == ConnectivityResult.none) {
      isConnected=false;
      // return false;
      // I am connected to a wifi network.
    }
    //  return isConnected;
  }
}
