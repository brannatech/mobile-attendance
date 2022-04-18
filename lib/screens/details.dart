import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details(this.name, this.email, this.phone, {Key? key})
      : super(key: key);
  final String name;
  final String email;
  final String phone;
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.grey.withOpacity(0.2),
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                child: const Icon(
                  Icons.person,
                  size: 200.0,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: FloatingActionButton.extended(
                      backgroundColor: Colors.teal,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24.0),
                          bottomRight: Radius.circular(24.0),
                        ),
                      ),
                      icon: const Icon(
                        Icons.phone_rounded,
                        color: Colors.tealAccent,
                        size: 24.0,
                      ),
                      label: const Text("call"),
                      onPressed: () {
                        //do call here
                      },
                    ),
                  ),
                  Container(
                    height: 40.0,
                    width: 2.0,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  Expanded(
                    child: FloatingActionButton.extended(
                      backgroundColor: Colors.teal,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.0),
                          bottomLeft: Radius.circular(24.0),
                        ),
                      ),
                      icon: const Icon(
                        Icons.message_rounded,
                        color: Colors.tealAccent,
                        size: 24.0,
                      ),
                      label: const Text("email"),
                      onPressed: () {
                        // do message here
                      },
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 2.0,
                indent: 60.0,
                endIndent: 60.0,
                color: Colors.blueGrey,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 32.0,
                      color: Colors.lightBlue,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        name,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text("......Other detail go down here ....")
            ],
          ),
          Positioned(
            top: 28.0,
            left: 16.0,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                size: 32.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
