import 'package:brawl1/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mocks/mock_review.dart';
import 'models/review.dart';
import '../sidebar.dart';
import 'main_screen.dart';
import 'models/drop_down_button.dart';

class InsertReview extends StatelessWidget {
  final User user;

  InsertReview(this.user);

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
            itemBuilder: renderReview,
            
          )
      )
    );

  }

    Widget renderReview(BuildContext context, int index){
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
        child: blocoReview(context, index),
      );
    }

    Widget blocoReview(BuildContext context, int index){
      var user = this.user;
      return Column(
        children:[
          Row(
            children: <Widget>[
              Column(
                children:<Widget>[
                  userPhoto(user)
                ]
              ),
              Column(
                children: <Widget>[
                  userName(user),
                ]
              ),
            ]
          ),
          Container(
            // margin:EdgeInsets.all(15),
            child: DropDownButton(),
          ),
          Container(
            child:
              makeInput(label: "Write you review"),
          ),
          Container(
             margin:EdgeInsets.all(15),
          ),Container(
            margin: EdgeInsets.all(15),
            child: MaterialButton(
              minWidth: double.infinity,
              height:60,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage(MockReview.items))
                );
              },
              color: Colors.deepOrange,
              shape: RoundedRectangleBorder(
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

    Widget userPhoto(User user) {
      return Container(
        margin: EdgeInsets.all(10.0),
        child:Padding(padding:  EdgeInsets.only(left: 10.0, right: 10.0),
        child: CircleAvatar(radius: 20.0, backgroundImage: NetworkImage(user.url),)
        )
      );
    }

    Widget userName(User user) {
      return Container(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 2.0),
        child: Text(user.name , style:  TextStyle(fontSize: 16.0, color: Colors.black)),
      );
    }

}

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

/// This is the private State class that goes with DropDownButton.
class _DropDownButtonState extends State<DropDownButton> {
  String dropdownValue = 'Select the map you want to review';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepOrange),
      underline: Container(
        height: 2,
        color: Colors.deepOrangeAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Select the map you want to review','Gem Grab', 'Showdown', 'Brawl Ball', 'Bounty', 'Hot Zone', 'Heist', 'Siege', 'Knockout']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

Widget makeInput({label,obsureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style:
          TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white
          ),
      ),   
      SizedBox(height: 5,),
      TextField(
        textAlign:  TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        cursorColor: Colors.deepOrange,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10,10,10,100),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),
        ),
      ),
      SizedBox(height: 30,)

    ],
  );
}