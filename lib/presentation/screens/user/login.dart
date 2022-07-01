import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Text("Rehab"),
    );
  }
}

/* Column(
        children: [
          Text("Login"),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Enter your Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              labelText: "Email Address",
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: 20,),
           TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              labelText: "Password ",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
          ),
          SizedBox(height: 20,),
          
        ],
      );*/

      /*
       SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
            ))
          ],
        ),
      ),*/