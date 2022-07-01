import 'package:flutter/material.dart';
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Text("Magd",style: TextStyle(color: Color(0xFF005DA3),fontSize: 40,fontWeight: FontWeight.bold),),
                Text("soft",style: TextStyle(color: Color(0xFF005DA3),fontSize: 40))

            ]),
            SizedBox(height: 20,),
             ElevatedButton(
                    onPressed: () {
                     
                      Navigator.pushNamed(context, "/login");
                    },
                    child: Text(
                      "continue",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFF005DA3)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 106, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                  ),
                  SizedBox(height: 20,),
                  
          ]),
        ),
      ),
    );
    
  }
}