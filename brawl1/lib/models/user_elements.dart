import 'package:flutter/material.dart';

class UserElements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.all(10.0),
              child:Padding(padding:  EdgeInsets.only(left: 10.0, right: 10.0),
              child: CircleAvatar(radius: 20.0, backgroundImage: NetworkImage('https://th.bing.com/th/id/R.6ae74c5f86466ef4f6fc6253c767381a?rik=5DSgIRvIaK7UPw&riu=http%3a%2f%2fwww.pngall.com%2fwp-content%2fuploads%2f5%2fProfile-Avatar-PNG.png&ehk=GVMh4KTpyOBERsOt5H%2b8TcGp%2bS8DdbR6niBs54kRaYA%3d&risl=&pid=ImgRaw&r=0'),)
              )
            );
  }
}