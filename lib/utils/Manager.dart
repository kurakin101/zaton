import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zaton/pages/CartPage.dart';
import 'package:zaton/pages/CatalogPage.dart';
import 'package:zaton/pages/DiscountPage.dart';
import 'package:zaton/pages/ProfilePage.dart';
import 'package:zaton/pages/SearchPage.dart';

class Manager extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _page = 0;
  int _selectedIndex = 0;

  final _pageOptions = [
    CatalogPage(),
    DiscountPage(),
    CartPage(),
    SearchPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_page],
      bottomNavigationBar: Container(
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () => _onItemTapped(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    "lib/assets/catalog_icon.svg",
                    color: _page == 0 ? Color(0xff24C273) : Colors.black38,
                  ),
                  Text(
                    "Каталог",
                    style: TextStyle(fontSize: 12, color: _page == 0 ? Color(0xff24C273) : Colors.black38,),
                  )
                ],
              ),
            ),InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () => _onItemTapped(1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    "lib/assets/discount_icon.svg",
                    color: _page == 1 ? Color(0xff24C273) : Colors.black38,
                  ),
                  Text(
                    "Акции",
                    style: TextStyle(fontSize: 12, color: _page == 1 ? Color(0xff24C273) : Colors.black38,),
                  )
                ],
              ),
            ),InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () => _onItemTapped(2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    "lib/assets/cart_icon.svg",
                    color: _page == 2 ? Color(0xff24C273) : Colors.black38,
                  ),
                  Text(
                    "Корзина",
                    style: TextStyle(fontSize: 12, color: _page == 2 ? Color(0xff24C273) : Colors.black38,),
                  )
                ],
              ),
            ),InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () => _onItemTapped(3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    "lib/assets/search_icon.svg",
                    color: _page == 3 ? Color(0xff24C273) : Colors.black38,
                  ),
                  Text(
                    "Поиск",
                    style: TextStyle(fontSize: 12, color: _page == 3 ? Color(0xff24C273) : Colors.black38,),
                  )
                ],
              ),
            ),InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () => _onItemTapped(4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    "lib/assets/profile_icon.svg",
                    color: _page == 4 ? Color(0xff24C273) : Colors.black38,
                  ),
                  Text(
                    "Личное",
                    style: TextStyle(fontSize: 12, color: _page == 4 ? Color(0xff24C273) : Colors.black38,),
                  )
                ],
              ),
            ),
            //     icon: Icon(Icons.home),
            //     label: 'Home',z
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.business),
            //   label: 'Business',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.school),
            //   label: 'School',
            // ),BottomNavigationBarItem(
            //   icon: Icon(Icons.school),
            //   label: 'School',
            // ),BottomNavigationBarItem(
            //   icon: Icon(Icons.school),
            //   label: 'School',
            // ),
          ],
        ),
      ),
    );
    // bottomNavigationBar: NeumorphicTheme(
    //   theme: NeumorphicThemeData(
    //     defaultTextColor: Color(0xFF3E3E3E),
    //     accentColor: Colors.grey,
    //     variantColor: Colors.black38,
    //   ),
    //   themeMode: ThemeMode.light,
    //   child: Container(
    //     width: double.infinity,
    //     height: 90,
    //     child: NeumorphicBackground(
    //       child: NeumorphicBackground(
    //         child: Container(
    //           child: Container(
    //             child: Container(
    //               child: Neumorphic(
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Expanded(
    //                       child: NeumorphicButton(
    //                           padding: EdgeInsets.all(16),
    //                           style: NeumorphicStyle(
    //                               shape: NeumorphicShape.flat,
    //                               boxShape: NeumorphicBoxShape.circle(),
    //                               depth: 12),
    //                           child: Icon (Icons.home_outlined),
    //                           onPressed: () {setState(() {
    //                             _page = 0;
    //                           });}
    //                       ),
    //                     ),
    //                     Expanded(
    //                       child: NeumorphicButton(
    //                           padding: EdgeInsets.all(16),
    //                           style: NeumorphicStyle(
    //                               shape: NeumorphicShape.flat,
    //                               boxShape: NeumorphicBoxShape.circle(),
    //                               depth: 12),
    //                           child: Icon (Icons.add_circle_outline),
    //                           onPressed: () {setState(() {
    //                             _page = 1;
    //                           });}
    //                       ),
    //                     ),
    //                     Expanded(
    //                       child: NeumorphicButton(
    //                           padding: EdgeInsets.all(16),
    //                           style: NeumorphicStyle(
    //                               shape: NeumorphicShape.flat,
    //                               boxShape: NeumorphicBoxShape.circle(),
    //                               depth: 12),
    //                           child: Icon (Icons.person_outline_rounded),
    //                           onPressed: () {setState(() {
    //                             _page = 2;
    //                           });}
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // ),
  }
}
