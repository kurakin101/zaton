import 'package:flutter/material.dart';
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _page,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
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






