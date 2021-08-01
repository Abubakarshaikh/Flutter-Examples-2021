import 'package:flutter/material.dart';

class Micard extends StatelessWidget {
  const Micard({Key? key}) : super(key: key);
  static const String routeKey = "Micard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            maxRadius: 55.0,
            // radius: 40.0,
            minRadius: 55.0,
            backgroundImage: AssetImage("assets/images/angela.jpg"),
          ),
          Text(
            "Angela au",
            style: TextStyle(
              fontSize: 36.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Pacifico Regular",
            ),
          ),
          Divider(
            color: Colors.white.withOpacity(0.6),
            thickness: 0.6,
            indent: 110,
            endIndent: 110,
          ),
          Text(
            "Flutter Developer",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white.withOpacity(0.6),
              fontWeight: FontWeight.bold,
              fontFamily: "SourceSansPro Regular",
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.lock, color: Colors.teal),
                title: Text(
                  "+92310 3896331",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.teal,
                    fontSize: 18.0,
                    fontFamily: "SourceSansPro Regular",
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.teal),
                title: Text(
                  "shaikhabubakar983@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0,
                    color: Colors.teal,
                    fontFamily: "SourceSansPro Regular",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
