import 'dart:collection';

import 'package:attendance/models/announcement.dart';
import 'package:attendance/models/user.dart';
import 'package:flutter/foundation.dart';

import 'event.dart';

class Members with ChangeNotifier {
  List<User> members = [
    User("Fikireab", "Mekuriaw", "fikirm@email.com", "password"),
    User("Endalew", "Dereje", "endedereje@email.com", "password"),
    User("Sintayehu", "Tesfa", "sinte@email.com", "password"),
  ];
  get getMembers => UnmodifiableListView(members);
}

class Announcements with ChangeNotifier {
  List<Announcement> announcements = [
    Announcement(
      "Call for meeting",
      "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Doloremque explicabo error ipsam perspiciatis nobis sed! Quisquam maxime delectus velit debitis blanditiis culpa tempore optio temporibus vero, at iste, quasi nemo.",
      DateTime.now(),
    ),
    Announcement(
      "Call for meeting",
      "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Doloremque explicabo error ipsam perspiciatis nobis sed! Quisquam maxime delectus velit debitis blanditiis culpa tempore optio temporibus vero, at iste, quasi nemo.",
      DateTime.now(),
    ),
    Announcement(
      "Call for meeting",
      "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Doloremque explicabo error ipsam perspiciatis nobis sed! Quisquam maxime delectus velit debitis blanditiis culpa tempore optio temporibus vero, at iste, quasi nemo.",
      DateTime.now(),
    ),
  ];
  get getAnnouncements => UnmodifiableListView(announcements);
}

class Events with ChangeNotifier {
  List<Event> events = [
    Event(
      "Call for meeting",
      "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Doloremque explicabo error ipsam perspiciatis nobis sed! Quisquam maxime delectus velit debitis blanditiis culpa tempore optio temporibus vero, at iste, quasi nemo.",
      DateTime.now(),
      DateTime.now(),
    ),
    Event(
      "Call for meeting",
      "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Doloremque explicabo error ipsam perspiciatis nobis sed! Quisquam maxime delectus velit debitis blanditiis culpa tempore optio temporibus vero, at iste, quasi nemo.",
      DateTime.now(),
      DateTime.now(),
    ),
    Event(
      "Call for meeting",
      "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Doloremque explicabo error ipsam perspiciatis nobis sed! Quisquam maxime delectus velit debitis blanditiis culpa tempore optio temporibus vero, at iste, quasi nemo.",
      DateTime.now(),
      DateTime.now(),
    ),
  ];
  get getEvents => UnmodifiableListView(events);
}
