
import 'package:brawl1/login.dart';
import 'package:flutter/material.dart';

import 'main_screen.dart';
import 'mocks/mock_review.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.yellow, Colors.redAccent]
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading:
            IconButton( onPressed: (){
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.white,)),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text (
                            "Sign up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "Create an Account,Its free",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 30,)
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40
                        ),
                        child: Column(
                          children: [
                            makeInput(label: "Email"),
                            makeInput(label: "Password",obsureText: true),
                            makeInput(label: "Confirm Pasword",obsureText: true)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          padding: EdgeInsets.only(top: 3,left: 3),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height:60,
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>MainPage(MockReview.items))
                              );
                            },
                            color: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)
                            ),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account? "),
                          TextButton(
                            style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(16.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage())
                              );
                            },
                            child: const Text('Login'),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}

Widget makeInput({label,obsureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,style:TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.white
      ),),
      SizedBox(height: 5,),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)
          ),
        ),
      ),
      SizedBox(height: 30,)

    ],
  );
}
