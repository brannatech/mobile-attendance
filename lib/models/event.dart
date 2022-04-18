class Event {
  Event(
    this.title,
    this.description,
    this.postedDate,
    this.eventDate,
  );
  String title;
  String description;
  DateTime postedDate;
  DateTime eventDate;

  String get getTitle => title;
  String get getDescription => description;
  DateTime get postedOn => postedDate;
  DateTime get expireOn => eventDate;
}
