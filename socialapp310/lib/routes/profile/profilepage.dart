import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:socialapp310/models/post.dart';
import 'package:socialapp310/routes/profile/appBar.dart';
import 'package:socialapp310/routes/profile/my_flutter_app_icons.dart';
import 'package:socialapp310/routes/profile/profilewidget.dart';

import 'package:socialapp310/utils/color.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin {
  int _pageIndex = 0;
  String _name ="Generic Name";
  String _username ="doggo";
  int _postnum = posts.length;
  int _followers = 350;
  int _following = 500;
  TabController _controller;


  @override
  void initState() {
    
    super.initState();
    _controller = TabController(length: 3, vsync: this);
    _controller.addListener(() {
      print(_controller.index);
    });
  }


  @override
  Widget build(BuildContext context) {
    var _screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: InstaAppBar(
        height: 345,
        isProfileScreen: true,
        backgroundColor: AppColors.darkpurple,
        center: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.alternate_email_outlined,
              color: Colors.white,
            ),
            Text(
              _username,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

          ],
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.article_outlined,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        profileStats: profileStats(screen: _screen, color: Colors.white, post: _postnum, followers: _followers, following: _following),
        bio: bio(name: _name),
        tabbar: TabBar(
          unselectedLabelColor: Colors.white,
          labelColor: AppColors.peachpink,
          indicatorColor: AppColors.peachpink,
          tabs: [
            Tab(icon: Icon(Icons.grid_on)),
            Tab(icon: Icon(Icons.location_on_outlined)),
            Tab(icon: Icon(MyFlutterApp.pen_alt)),
          ],
          controller: _controller,
        ),
      ),
      body: TabBarView(
        children: [
          mediagrid_display(),
          Icon(Icons.location_on_outlined, size: 350),
          Icon(Icons.location_on_outlined, size: 350),

        ],
        controller: _controller,
      ),
    );
  }
}

Widget mediagrid_display () {
  return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            StaggeredGridView.countBuilder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              itemCount: posts.length,
              itemBuilder: (contex, index) {
                return Container(
                  padding:  EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Image(
                      fit: BoxFit.cover,
                      image:
                      AssetImage(posts.elementAt(index).ImageUrlPost),
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (index) => StaggeredTile.count(1 , 1 ),
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
          ],
        ),
      );
}