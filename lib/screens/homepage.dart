import '../models/providers.dart';
import '../screens/widgets/announcement_list.dart';
import '../screens/widgets/events_list.dart';
import '../screens/widgets/users_list.dart';
import 'package:backdrop/app_bar.dart';
import 'package:backdrop/backdrop.dart';
import 'package:backdrop/scaffold.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool menuOpen = false;
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      stickyFrontLayer: true,
      appBar: BackdropAppBar(
        title: Text(menuStrings.elementAt(_currentIndex)),
        elevation: 16.0,
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(Icons.arrow_back_ios),
                  const Icon(Icons.event),
                  Text(
                    "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}",
                    style: const TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          )
        ],
      ),
      frontLayer: _pages[_currentIndex],
      backLayer: BackdropNavigationBackLayer(
        items: List.generate(menuIcons.length, (index) {
          return index == _currentIndex
              ? Card(
                  color: Colors.teal.withOpacity(0.2),
                  elevation: 8.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0),
                    ),
                  ),
                  child: ListTile(
                    leading: Icon(
                      menuIcons.elementAt(index),
                      size: 24.0,
                      color: Colors.tealAccent,
                    ),
                    title: Text(
                      menuStrings.elementAt(index),
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )
              : Card(
                  elevation: 8.0,
                  child: ListTile(
                    leading: Icon(menuIcons.elementAt(index)),
                    title: Text(menuStrings.elementAt(index)),
                  ),
                );
        }),
        onTap: (position) {
          setState(() {
            _currentIndex = position;
          });
        },
      ),
    );
  }

  int _currentIndex = 0;
  final List<String> menuStrings = [
    "Anouncements",
    "Upcomming Events",
    "Members",
    "Settings",
    "Share",
    "Privacy & Security",
    "About",
  ];
  final List<IconData> menuIcons = [
    Icons.notifications,
    Icons.upcoming,
    Icons.people_alt,
    Icons.settings,
    Icons.share,
    Icons.privacy_tip,
    Icons.info,
  ];
}

final members = Members().getMembers;
final announcements = Announcements().getAnnouncements;
final events = Events().getEvents;
final List<Widget> _pages = [
  ShowAnnouncement(announcements),
  ShowEvents(events),
  UserList(members),
  const Center(
    child: Icon(Icons.settings_accessibility),
  ),
  const Center(
    child: Icon(Icons.share),
  ),
  const Center(
    child: Icon(Icons.security),
  ),
  const Center(
    child: AboutDialog(),
  ),
];
