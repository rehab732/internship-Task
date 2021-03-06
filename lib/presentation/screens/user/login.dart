import 'package:flutter/material.dart';

import '../../widget/shared_widget.dart';
import 'logindata.dart';

class Login extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xFF005DA3),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                 
                Positioned(
                  top: 0,
                  left: 100,
                  child: Container(
                    child: Image(
                      image: const AssetImage("images/one.png"),
                      //fit: BoxFit.none,
                    ),
                  ),
                ),
                Positioned(
              top: 300,
              child: Container(
                width: double.infinity,
                height: 600,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(65),
                      topRight: Radius.circular(65),
                    )),
                child: Center(
                    child: SingleChildScrollView(
                  child: Form(
                    key: formkey,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          formfieldd(
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            /*validate: (String value){
                                  if(value == null || value.isEmpty)
                                  {
                                    return 'email must not be empty';
                                  }
                                  return null;
                       
                                },*/
                            labelText: "Email",
                            hint: "Enter your Email",
                            prefix: Icons.email,
                            suff: Icons.mail,
                            ispass: false,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          formfieldd(
                            controller: passwordController,
                            type: TextInputType.visiblePassword,
                            /*validate: (String value){
                                  if(value == null || value.isEmpty)
                                  {
                                    return 'password must not be empty';
                                  }
                                  return null;
                       
                                },*/
                            labelText: "password",
                            hint: "Enter your password",
                            prefix: Icons.lock,
                            suff: Icons.remove_red_eye,
                            ispass: true,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                 Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=>Homee(
                                        mail: emailController,
                                        
                                        pass:passwordController,
                                      )));
                                },
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Color(0xFF005DA3)),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 10)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(27))),
                                ),
                              ),
                              SizedBox(width: 5,),
                                ElevatedButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                Navigator.pushNamed(context, "/signup");
                              }
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF005DA3)),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 10)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(27))),
                            ),
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
              ),
            ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}



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
