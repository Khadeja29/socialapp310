class Post {
  String username;
  String location;
  String ImageUrlAvatar;
  String ImageUrlPost;
  String caption;
  String date;
  int likes;
  int comments;
  int reposts;

  Post({ this.username, this.date, this.likes, this.comments, this.ImageUrlAvatar, this.ImageUrlPost, this.caption, this.location , this.reposts});
}