import 'package:dating_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Matches',
      style: optionStyle,
    ),
    Text(
      'Index 1: Search',
      style: optionStyle,
    ),
    Text(
      'Index 2: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=>controller.selectedIndex.value =index,
          destinations: [
           NavigationDestination(icon: Icon(FontAwesomeIcons.heart), label: 'Matches'),
            NavigationDestination(icon: Icon(FontAwesomeIcons.magnifyingGlass), label: 'Search'),
            NavigationDestination(icon: Icon(FontAwesomeIcons.user), label: 'Profile')
          ],
        ),
      ),
        body: Obx(()=>controller.screens[controller.selectedIndex.value]),

        //   // backgroundColor: Colors.pinkAccent,
        //   items: const <BottomNavigationBarItem>[
        //
        //     BottomNavigationBarItem(
        //       icon: Icon(FontAwesomeIcons.heart),
        //       label: 'Matches',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(FontAwesomeIcons.magnifyingGlass),
        //       label: 'Search',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(FontAwesomeIcons.user),
        //       label: 'Profile',
        //     ),
        //   ],
        //   currentIndex: _selectedIndex,
        //   selectedItemColor: Colors.pinkAccent,
        //   onTap: _onItemTapped,
        // ),);
    );

  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex=0.obs;
  final screens=[
    Container(
   child: Scaffold(
     backgroundColor: Colors.white,
     appBar: AppBar(
       title: Text('Matches'),
     ),
   ),



    ),
    Container(
      color: Colors.white,
      child:Scaffold(

        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SearchBar(
              leading: Icon(FontAwesomeIcons.magnifyingGlass),
              hintText:'Search by name' ,

            ),
          ),
        ),

      ),)
    ,Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Profile'),
        ),
      ),

    ),];

}