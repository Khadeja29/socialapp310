import 'package:flutter/material.dart';
import 'package:socialapp310/models/notifications.dart';
import 'package:socialapp310/routes/notifications/activity_app_bar.dart';
import 'package:socialapp310/routes/notifications/activity_tile.dart';
import 'package:socialapp310/utils/color.dart';
import 'package:socialapp310/utils/styles.dart';
import 'package:socialapp310/utils/dimension.dart';



class ActivityScreen extends StatefulWidget {
  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      print(index);
      _selectedIndex = index;
      if(index == 3) {
        Navigator.pushNamed(context, '/notifications');
      }

      //TODO: if index 0 nothing happens, if index 1 push search page, if index 2 push create page,
      //TODO: if index 3 push notif page, if index 4 push profile page
    });
  }
  @override
  Widget build(BuildContext context) {
    Size _screen = MediaQuery.of(context).size;
    return Scaffold(
          appBar: ActivityAppBar(height: 65),
          body: Container(
          // height: _screen.height,
          // width: _screen.width,
          // color: Theme.of(context).primaryColorDark,
          child: ListView.builder(
          itemCount: notifs.length,
          itemBuilder: (context, index) => ActivityTile(
            activity: notifs[index],
            // press: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) =>SingleProduct(id: products[index].productId),
            //     )),
            ),
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: AppColors.darkpurple,
        selectedItemColor: AppColors.peachpink,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Create"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selectedIndex,

        onTap: _onItemTapped,
      ),
      );
  }
}


