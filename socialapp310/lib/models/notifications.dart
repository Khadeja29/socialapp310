class NotificationItem {
  final String username;
  final int userId;
  final String type; // types include liked photo, follow user, comment on photo
  // final String mediaUrl;
  // final String mediaId;
  // final String userProfileImg;
  final String commentData;

 NotificationItem({this.username,
    this.userId,
    this.type,
    // this.mediaUrl,
    // this.mediaId,
    // this.userProfileImg,
    this.commentData});
}

List <NotificationItem> notifs = [
  NotificationItem(
      userId: 1,
      username: 'Jane Doe',
      commentData: 'Beautiful!',
      type: 'comment'),
  NotificationItem(
      userId: 2,
      username: 'Jane Doe',
      type: 'like'),
  NotificationItem(
      userId: 3,
      username: 'Jane Doe',
      type: 'follow'),
];