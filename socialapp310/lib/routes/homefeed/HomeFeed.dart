import 'package:flutter/material.dart';
import 'package:socialapp310/routes/homefeed/postCard.dart';
import 'package:socialapp310/utils/color.dart';
import 'package:socialapp310/utils/styles.dart';
import 'package:socialapp310/models/post.dart';


class HomeFeed extends StatefulWidget {
  @override
  _TestPostState createState() => _TestPostState();
}
//to connect to main use Function '/someroutename': (context) => HomeFeed(),
class _TestPostState extends State {
  Post post = Post(username: "Generic Name",location: "Some Location", likes: 100, ImageUrlAvatar: "assets/Dog/cutegolden.jpg", reposts: 20,
    ImageUrlPost: "assets/Dog/index.jpg", caption: "This is a generic sentence.This is a generic sentence.This is a generic sentence.", date: "April 17 2021", comments: 100);

  List<Post> posts = [Post(username: "Generic Name",location: "Some Location", likes: 15, ImageUrlAvatar: "assets/Dog/another.jpg", reposts: 20,
  ImageUrlPost: "assets/Dog/scenicgolden.jpg", caption: "This is a generic sentence.This is a generic sentence.This is a generic sentence.", date: "April 17 2021", comments: 20),
  Post(username: "Generic Name",location: "Some Location", likes: 100, ImageUrlAvatar: "assets/Dog/last.jpg", reposts: 58,
  ImageUrlPost: "assets/Dog/doglifting.png", caption: "This is a generic sentence.This is a generic sentence.This is a generic sentence.", date: "April 17 2021", comments: 30),
  Post(username: "Generic Name",location: "Some Location", likes: 235, ImageUrlAvatar: "assets/Dog/cutegolden.jpg", reposts: 62,
  ImageUrlPost: "assets/Dog/dogmask.jpg", caption: "This is a generic sentence.This is a generic sentence.This is a generic sentence.", date: "April 17 2021", comments: 100),
  Post(username: "Generic Name",location: "Some Location", likes: 1880, ImageUrlAvatar: "assets/Dog/cuteshiba.png", reposts: 108,
  ImageUrlPost: "assets/Dog/hungrydog.jpg", caption: "This is a generic sentence.This is a generic sentence.This is a generic sentence.", date: "April 17 2021", comments: 2),
    Post(username: "Generic Name",location: "Some Location", likes: 10000, ImageUrlAvatar: "assets/Dog/cutepug.jpg", reposts: 50,
        ImageUrlPost: "assets/Dog/husky.jpg", caption: "This is a generic sentence.This is a generic sentence.This is a generic sentence.", date: "April 17 2021", comments: 0)];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
     print(index);
      _selectedIndex = index;//TODO: if index 0 nothing happens, if index 1 push search page, if index 2 push create page,
      if (_selectedIndex == 1){
        Navigator.pushNamed(context, '/search');
      }//TODO: if index 3 push notif page, if index 4 push profile page
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightgrey,
      appBar: AppBar(
        backgroundColor: AppColors.darkpurple,
        centerTitle: true,
        title: Text(
          "Home",
          style: kAppBarTitleTextStyle,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.chat_bubble_outline,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),

      body: ListView(
        children: posts.map((post) => PostCard(post: post)).toList(),
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