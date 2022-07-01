import 'package:flutter/material.dart';

class Homee extends StatelessWidget {
  final TextEditingController pass;
  final TextEditingController mail;
  Homee({
    required this.mail,
    required this.pass,
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
            "Email : $mail ",
            style: TextStyle(color: Color(0xFF005DA3), fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Phone : $pass  ",
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
