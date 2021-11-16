import 'package:brawl1/usuario.dart';
import 'package:flutter/material.dart';
import 'models/review.dart';
import '../sidebar.dart';
import 'testando.dart';
import 'models/drop_down_button.dart';

class EscreverReview extends StatelessWidget {
  final User user;

  EscreverReview(this.user);

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
          PageView.builder(
            itemBuilder: widgetzao2,
            
          )
      )
    );

  }

    Widget widgetzao2(BuildContext context, int index){
      return Container(
        height: 300,
        margin:
          EdgeInsets.all(20.0),
        decoration:
          BoxDecoration(
            borderRadius:
              BorderRadius.all( Radius.circular(10.0)
          ),
          color: 
            Color.fromRGBO(255, 255, 255, 0.3)
          ),
        child: widgetzin(context, index),
      );
    }

    Widget widgetzin(BuildContext context, int index){
      var user = this.user;
      return Column(
        children:[
          Row(
            children: <Widget>[
              Column(
                children:<Widget>[
                  userFoto(user)
                ]
              ),
              Column(
                children: <Widget>[
                  userNome(user),
                ]
              ),
            ]
          ),
          Container(
            margin:EdgeInsets.all(15),
            child: Text("Drop down menu "),
          ),
          Container(
            margin:EdgeInsets.all(15),
            child: Text("Insira sua review "),
          ),
          Container(
             margin:EdgeInsets.all(15),
          ),Container(
            margin: EdgeInsets.all(15),
            child: MaterialButton(
              minWidth: double.infinity,
              height:60,
              onPressed: (){
              },
              color: Colors.redAccent,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(40)
              ),
              child: 
                Text(
                  "Publicar Review",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white
                  ),
                ),
              ) ,
            )
          
          
        ]
      );
    }

    Widget userFoto(User user) {
      return Container(
        margin: EdgeInsets.all(10.0),
        child:Padding(padding:  EdgeInsets.only(left: 10.0, right: 10.0),
        child: CircleAvatar(radius: 20.0, backgroundImage: NetworkImage(user.url),)
        )
      );
    }

    Widget userNome(User user) {
      return Container(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 2.0),
        child: Text(user.name , style:  TextStyle(fontSize: 16.0, color: Colors.black)),
      );
    }

}
    