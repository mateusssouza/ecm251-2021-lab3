import 'package:flutter/material.dart';
import 'models/user_elements.dart';

Widget test(){
  return Container(
    height: 180,
    margin:  EdgeInsets.all(20.0),
    decoration:
      BoxDecoration(
        borderRadius:  BorderRadius.all( Radius.circular(10.0)),
    color: Color.fromRGBO(255, 255, 255, 0.3)),
    // colorBlendMode: BlendMode.modulate,

    child:
    UserElements()
  );
}
