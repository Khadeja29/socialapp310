
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
Post post =  Post(username: "Generic Name",location: "Some Location", likes: 100, ImageUrlAvatar: "assets/Dog/cutegolden.jpg", reposts: 20,
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
      ImageUrlPost: "assets/Dog/husky.jpg", caption: "This is a generic sentence.This is a generic sentence.This is a generic sente nce.", date: "April 17 2021", comments: 0),
  Post(username: "Generic Name",location: "Some Location", likes: 100, ImageUrlAvatar: "assets/Dog/last.jpg", reposts: 58,
      ImageUrlPost: "assets/Dog/doglifting.png", caption: "This is a generic sentence.This is a generic sentence.This is a generic sentence.", date: "April 17 2021", comments: 30),
  Post(username: "Generic Name",location: "Some Location", likes: 235, ImageUrlAvatar: "assets/Dog/cutegolden.jpg", reposts: 62,
      ImageUrlPost: "assets/Dog/dogmask.jpg", caption: "This is a generic sentence.This is a generic sentence.This is a generic sentence.", date: "April 17 2021", comments: 100),
  Post(username: "Generic Name",location: "Some Location", likes: 1880, ImageUrlAvatar: "assets/Dog/cuteshiba.png", reposts: 108,
      ImageUrlPost: "assets/Dog/hungrydog.jpg", caption: "This is a generic sentence.This is a generic sentence.This is a generic sentence.", date: "April 17 2021", comments: 2),
  Post(username: "Generic Name",location: "Some Location", likes: 10000, ImageUrlAvatar: "assets/Dog/cutepug.jpg", reposts: 50,
      ImageUrlPost: "assets/Dog/husky.jpg", caption: "This is a generic sentence.This is a generic sentence.This is a generic sente nce.", date: "April 17 2021", comments: 0),
  Post(username: "Generic Name",location: "Some Location", likes: 100, ImageUrlAvatar: "assets/Dog/last.jpg", reposts: 58,
      ImageUrlPost: "assets/Dog/doglifting.png", caption: "This is a generic sentence.This is a generic sentence.This is a generic sentence.", date: "April 17 2021", comments: 30),
  Post(username: "Generic Name",location: "Some Location", likes: 235, ImageUrlAvatar: "assets/Dog/cutegolden.jpg", reposts: 62,
      ImageUrlPost: "assets/Dog/dogmask.jpg", caption: "This is a generic sentence.This is a generic sentence.This is a generic sentence.", date: "April 17 2021", comments: 100),
  Post(username: "Generic Name",location: "Some Location", likes: 1880, ImageUrlAvatar: "assets/Dog/cuteshiba.png", reposts: 108,
      ImageUrlPost: "assets/Dog/hungrydog.jpg", caption: "This is a generic sentence.This is a generic sentence.This is a generic sentence.", date: "April 17 2021", comments: 2),
  Post(username: "Generic Name",location: "Some Location", likes: 10000, ImageUrlAvatar: "assets/Dog/cutepug.jpg", reposts: 50,
      ImageUrlPost: "assets/Dog/husky.jpg", caption: "This is a generic sentence.This is a generic sentence.This is a generic sente nce.", date: "April 17 2021", comments: 0),
  Post(username: "Generic Name",location: "Some Location", likes: 10000, ImageUrlAvatar: "assets/Dog/cutepug.jpg", reposts: 50,
      ImageUrlPost: "assets/Dog/husky.jpg", caption: "This is a generic sentence.This is a generic sentence.This is a generic sente nce.", date: "April 17 2021", comments: 0)];