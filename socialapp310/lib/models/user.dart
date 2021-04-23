import 'package:socialapp310/models/post.dart';

class Profile {
  String username;
  String email;
  String fullname;
  String bio;
  String password;
  String imageUrlAvatar;
  List<dynamic> userPost;
  List<dynamic> followers;
  List<dynamic> followings;

  Profile({ this.username, this.imageUrlAvatar, this.email, this.fullname, this.bio, this.password, this.userPost, this.followers, this.followings});
}

List<Profile> users = [
  Profile(
    username: "someName",
    email: "abc@gmail.com",
    fullname: "SomeName",
    bio: "lol",
    password: "12121212",
    imageUrlAvatar: "assets/Dog/last.jpg",
    userPost: posts,
    followers: [],
    followings: [],
  ),
  Profile(
    username: "anotherName",
    email: "abc@gmail.com",
    fullname: "anotherName",
    bio: "lol",
    password: "12121212",
    imageUrlAvatar:  "assets/Dog/last.jpg",
    userPost: posts,
    followers: [],
    followings: [],
  ),
  Profile(
    username: "onemoreName",
    email: "abc@gmail.com",
    fullname: "SomeName",
    bio: "lol",
    password: "12121212",
    imageUrlAvatar: "assets/Dog/cutegolden.jpg",
    userPost: posts,
    followers: [],
    followings: [],
  ),
  Profile(
    username: "DoggieName",
    email: "abc@gmail.com",
    fullname: "SomeName",
    bio: "lol",
    password: "12121212",
    imageUrlAvatar: "assets/Dog/last.jpg",
    userPost: posts,
    followers: [],
    followings: [],
  ),
];
