import 'package:flutter/material.dart';
Widget formfieldd({
  required TextEditingController controller,
  required TextInputType type,
 // required Function validate,
  required String labelText,
  required String hint,
  required IconData prefix,
  required IconData suff,
  required bool ispass,

})=>TextFormField(
                controller: controller,
                keyboardType: type,
                obscureText: ispass,
                //validator: validate(),
                decoration: InputDecoration(
                  
                  hintText: hint,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  labelText: labelText,
                  prefixIcon: Icon(prefix),
                  suffixIcon: Icon(suff),
                ),
                
              );