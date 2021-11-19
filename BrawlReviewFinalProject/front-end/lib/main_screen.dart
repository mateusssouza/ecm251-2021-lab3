import 'package:flutter/material.dart';
import 'models/review.dart';
import '../sidebar.dart';
import 'user.dart';

class MainPage extends StatelessWidget {
  final List<Reviews> reviews;

  MainPage(this.reviews);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: 
      BoxDecoration(
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
          ListView.builder(
            itemCount: this.reviews.length,
            itemBuilder: widgetzao,
          )
      )
    );

  }

    Widget widgetzao(BuildContext context, int index){
      return Container(
        height: 180,
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
      var review = this.reviews[index];
      return Column(
        children:[
          Row(
            children: <Widget>[
              Column(
                children:<Widget>[
                  userFoto(review)
                ]
              ),
              Column(
                children: <Widget>[
                  userNome(review),
                  userBrowlerFavorito(review)
                ]
              ),
              Column(
                children: <Widget>[
                  userBarraSeparacao()
                ],
              ),
              Column(
                children: [
                  userModoDeJogo(),
                  userNomeModoDeJogo(review)
                ]
              ),
            ]
          ),
          Row(
            children: <Widget>[
              Flexible(
                child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      userWrittenReview(review)
                    ],
                  )
              )
            ],
          )
        ]
      );
    }

    Widget userNome(Reviews reviews) {
      return Container(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 2.0),
        child: Text(reviews.name , style:  TextStyle(fontSize: 16.0, color: Colors.white)),
      );
    }

    Widget userFoto(Reviews reviews) {
      return Container(
        margin: EdgeInsets.all(10.0),
        child:Padding(padding:  EdgeInsets.only(left: 10.0, right: 10.0),
        child: CircleAvatar(radius: 20.0, backgroundImage: NetworkImage(reviews.url),)
        )
      );
    }
    Widget userBrowlerFavorito(Reviews reviews) {
      return  Container(
        margin: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
        child: Text(reviews.brawler, style:  TextStyle(fontSize: 12.0, color: Colors.white)),
      );
    }

    Widget userBarraSeparacao(){
      return Container(
        margin: EdgeInsets.fromLTRB(10, 5, 10.0, 10),
        child: Text('|', style:  TextStyle(fontSize: 30.0, color: Colors.white)),
      );
    }

    Widget userModoDeJogo(){
      return Container(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 2.0),
        child: Text('Game mode:', style:  TextStyle(fontSize: 12.0, color: Colors.white)),
      );
    }

    Widget userNomeModoDeJogo(Reviews reviews){
      return Container(
        // margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 2.0),
        child:
          Text(reviews.gameMode,
            style:
              TextStyle(
                fontSize: 16.0,
                color: Colors.white))
      );
    }

    Widget userWrittenReview(Reviews reviews){
      return Container(
        margin: EdgeInsets.fromLTRB(10,20,10,10),
        child: Text(
          reviews.reviewText,
          style: 
            TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
        )
      );
    }
}