import 'package:flutter/material.dart';
import '../models/notifications.dart';

class Notifications extends StatefulWidget {
  @override
  _ActivityFeedPageState createState() => _ActivityFeedPageState();
}

class _ActivityFeedPageState extends State<Notifications> with AutomaticKeepAliveClientMixin<Notifications> {

  getNotifications() {
    return notifs;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // reloads state when opened again
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Activity",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: buildActivityFeed(),
    );
  }

  buildActivityFeed() {
    return Container(
      child: FutureBuilder(
          future: getNotifications(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Container(
                  alignment: FractionalOffset.center,
                  padding: const EdgeInsets.only(top: 10.0),
                  child: CircularProgressIndicator());
            else {
              return ListView(children: snapshot.data);
            }
          }),
    );
  }

  // ensures state is kept when switching pages
  @override
  bool get wantKeepAlive => true;

}

  Widget mediaPreview = Container();
  String actionText;

  void configureItem(BuildContext context) {
    if (type == "like" || type == "comment") {
      mediaPreview = GestureDetector(
        // onTap: () {
        //   openImage(context, mediaId);
        // },
        child: Container(
          height: 45.0,
          width: 45.0,
          child: AspectRatio(
            aspectRatio: 487 / 451,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    alignment: FractionalOffset.topCenter,
                    image: NetworkImage('https://www.google.com/search?q=post+png+image&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjinoqa1oDwAhVmMOwKHT7GCs4Q_AUoAXoECAEQAw&biw=1511&bih=694#imgrc=p07Wym_rsICv7M'),
                  )),
            ),
          ),
        ),
      );
    }

    if (type == "like") {
      actionText = " liked your post.";
    } else if (type == "follow") {
      actionText = " starting following you.";
    } else if (type == "comment") {
      actionText = " commented: $commentData";
    } else {
      actionText = "Error - invalid activityFeed type: $type";
    }
  }

  @override
  Widget build(BuildContext context) {
    configureItem(context);
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 15.0),
          child: CircleAvatar(
            radius: 23.0,
            backgroundImage: NetworkImage('https://www.google.com/search?q=user+profile+avatar+png&tbm=isch&ved=2ahUKEwi1iLOb1oDwAhUWwIUKHbNnD4AQ2-cCegQIABAA&oq=user+profile+avatar+png&gs_lcp=CgNpbWcQAzICCAAyAggAMgIIADICCAAyBggAEAUQHjIGCAAQCBAeMgYIABAIEB4yBggAEAgQHjIGCAAQCBAeMgYIABAIEB46BwgAELEDEEM6BAgAEENQroMCWJiiAmDtowJoAXAAeAGAAfQDiAGFIZIBCTItMy41LjMuMZgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=Qmp4YLXfPJaAlwSzz72ACA&bih=694&biw=1511#imgrc=Y1MV9Dg3zVSCxM'),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              GestureDetector(
                child: Text(
                  'John Doe',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                // onTap: () {
                //   openProfile(context, userId);
                // },
              ),
              Flexible(
                child: Container(
                  child: Text(
                    actionText,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
            child: Align(
                child: Padding(
                  child: mediaPreview,
                  padding: EdgeInsets.all(15.0),
                ),
                alignment: AlignmentDirectional.bottomEnd))
      ],
    );
  }
