class Announcement {
  Announcement(
    this.title,
    this.description,
    this.postedDate,
  );
  String title;
  String description;
  DateTime postedDate;
  String get getTitle => title;
  String get getDescription => description;
  DateTime get postedOn => postedDate;
}
