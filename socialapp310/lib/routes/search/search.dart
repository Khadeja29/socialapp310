import 'package:flutter/material.dart';
import 'package:socialapp310/postClass/post.dart';
import 'package:socialapp310/postClass/postList.dart';
import 'package:socialapp310/routes/search/searchTabs.dart';
import 'package:socialapp310/routes/search/searchWidget.dart';
import 'package:socialapp310/utils/color.dart';

class Search extends StatefulWidget {
  @override
  searchState createState() => searchState();
}

class searchState extends State<Search> {
  List<Post> post_list = posts;
  int choiceIdx;
  String query = '';

  searchState();

  @override
  void initState() {
    super.initState();
    post_list = posts;
    choiceIdx = 0;
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: DefaultTabController(
      length: choices.length,
      child: Scaffold(
        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight+kToolbarHeight),
          child: new Container(
            color: AppColors.darkpurple,
            child: new SafeArea(
              child: Column(
                children: <Widget>[
                  buildSearch(),
                  new TabBar(
                    isScrollable: true,
                    tabs: choices.map<Widget>((Choice choice){
                      return new Container(
                        margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                        child: new Tab(
                          text: choice.title,

                          //icon: Icon(choice.icon),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
              children: choices.map((Choice choice){
                return Column(
                  children: <Widget>[
                    Expanded(
                      child: ListView.builder(
                        itemCount: post_list.length,
                        itemBuilder: (context, index) {
                          final product = post_list[index];
                          final choiceIdx = choice.index;
                          return buildProduct(product);
                        },
                      ),
                    ),
                  ],
                );
              }
              ).toList(),
            ),
      ),
    ),

  );

  Widget buildSearch() => SearchWidget(
    text: query,
    hintText: 'Search...',
    onChanged: searchProduct,
  );

  Widget buildProduct(Post post) => ListTile(
    leading: Image(
      image: AssetImage(post.ImageUrlPost),
      fit: BoxFit.cover,
      width: 50,
      height: 50,
    ),
    title: Text(post.caption),
  );

  void searchProduct(String query) {
    final postsAll = posts.where((post) {
      if (choiceIdx == 0){
        final titleLower = post.username.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower);
      }else if (choiceIdx == 1){
        final titleLower = post.location.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower);
      }else{
        final titleLower = post.caption.toLowerCase();
        final searchLower = query.toLowerCase();

        return titleLower.contains(searchLower);
      }

    }).toList();

    setState(() {
      this.query = query;
      this.post_list = postsAll;
    });
  }
}