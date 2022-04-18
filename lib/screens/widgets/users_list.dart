import 'package:animations/animations.dart';
import 'package:attendance/screens/details.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList(this.members, {Key? key}) : super(key: key);
  final List members;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: members.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: OpenContainer(
            closedColor: Theme.of(context).cardColor,
            openColor: Colors.transparent,
            middleColor: Colors.teal,
            closedShape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            closedBuilder: (context, action) {
              return Row(
                children: [
                  const CircleAvatar(
                    radius: 32,
                    child: Icon(
                      Icons.person,
                      size: 48.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      members.elementAt(index).getFname +
                          " " +
                          members.elementAt(index).getLname,
                      style: const TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                ],
              );
            },
            openBuilder: (context, action) {
              String uName = members.elementAt(index).getFname +
                  " " +
                  members.elementAt(index).getLname;
              return Details(
                uName,
                members.elementAt(index).getEmail,
                "09 9999999",
              );
            },
          ),
        );
      },
    );
  }
}
