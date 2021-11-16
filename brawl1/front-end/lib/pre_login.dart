import 'package:brawl1/login.dart';
import 'package:brawl1/signup.dart';
import 'package:flutter/material.dart';
import '../sidebar.dart';

class PreLogin extends StatelessWidget {

  // ReviewDetail(this.reviews);

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
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title:
            Container(
              constraints: BoxConstraints.tightFor(height: 50),
               child: Image.network("https://help.supercellsupport.com/uploads/_500x376_fit_center-center_90_none/BS-game-icon.png?mtime=20201110153249&focal=none&tmtime=20210317151933", fit: BoxFit.fitWidth),
            ),
        ),
        body:
          SafeArea(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                      "Hello There!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                      ),
                    SizedBox(height: 30,),
                    Text(
                      "Automatic identity verification which enable you to verify your identity",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                      ),
                    ),
                    Container(
                        margin:EdgeInsets.all(15),
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        height:60,
                        onPressed: (){
                          _navigateLogin(context);
                        },
                        color: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        margin:EdgeInsets.all(10),
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        height:60,
                        onPressed: (){
                          _navigateSignup(context);
                        },
                        color: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),	
                    ],
                  ),
                ]
              )
            )
          )
      )
    );
  }

  void _navigateLogin(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      )
    );
  }

  void _navigateSignup(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignupPage(),
      )
    );
  }

}