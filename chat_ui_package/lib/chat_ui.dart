import 'package:flutter/material.dart';

class ChatUI extends StatelessWidget {
  final String username;
  final String role;
  final String message;
  final String imagepath;

  const ChatUI({
    super.key,
    required this.username,
    required this.role,
    required this.message,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Card(
        elevation: 15,
        margin: EdgeInsets.all(100),
        shadowColor: const Color.fromARGB(255, 110, 238, 140),
        color: const Color.fromARGB(255, 185, 210, 250),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(12, 10, 15, 1),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black38,
                    backgroundImage: AssetImage(imagepath),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: Main AxisAlignment.start,
                      children: [
                        Text(
                          username,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          role,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 12, 2),
                child: Text(message),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
