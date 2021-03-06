import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final TextEditingController name;
  final TextEditingController phone;
  final TextEditingController mail;
  Home({
    required this.mail,
    required this.name,
    required this.phone,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF005DA3),
        title: Text(
          "User Data",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Name : $name ",
            style: TextStyle(color: Color(0xFF005DA3), fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Email : $mail ",
            style: TextStyle(color: Color(0xFF005DA3), fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Phone : $phone  ",
            style: TextStyle(color: Color(0xFF005DA3), fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Logout",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF005DA3)),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27))),
            ),
          ),
        ]),
      ),
    );
  }
}
