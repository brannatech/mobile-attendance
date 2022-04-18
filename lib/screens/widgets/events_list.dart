import 'dart:ui';
import 'package:flutter/material.dart';

class ShowEvents extends StatelessWidget {
  const ShowEvents(this.data, {Key? key}) : super(key: key);
  final List data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0,
      ),
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 16.0,
              child: ExpansionTile(
                key: PageStorageKey<String>(data.elementAt(index).getTitle),
                subtitle: Text(
                  data.elementAt(index).getDescription,
                  overflow: TextOverflow.ellipsis,
                ),
                title: Text(
                  data.elementAt(index).getTitle,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                children: [
                  Text(
                    "Posted on ${data.elementAt(index).postedOn}",
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                  Text(
                    "Expires on ${data.elementAt(index).expireOn}",
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                  Text(
                    data.elementAt(index).getDescription,
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
