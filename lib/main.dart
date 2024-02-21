import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:FunCard(),
  ));
}

class FunCard extends StatefulWidget {
  @override
  State<FunCard> createState() => _FunCardState();
}

class _FunCardState extends State<FunCard> {

int funCardLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[900],
      appBar:AppBar(
        title:Text('Fun Id Card'),
        centerTitle:true,
        backgroundColor:Colors.grey[850],
        foregroundColor: Colors.white,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            funCardLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage:AssetImage('assets/thumb.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height:60.0,
              color:Colors.grey[800],
            ),
            Text('NAME',
              style:TextStyle(
                color:Colors.grey,
                letterSpacing:2.0,
              )
            ),//
            SizedBox(height:10.0),
            Text('Wasim Akram',
                style:TextStyle(
                  color:Colors.amber[200],
                  letterSpacing:2.0,
                  fontSize:28.0,
                  fontWeight:FontWeight.bold,
                )
            ),
            SizedBox(height:30.0),
            Text('Current Fun Card Level',
                style:TextStyle(
                  color:Colors.grey,
                  letterSpacing:2.0,
                )
            ),
            SizedBox(height:10.0),
            Text(
                '$funCardLevel',
                style:TextStyle(
                  color:Colors.amber[200],
                  letterSpacing:2.0,
                  fontSize:28.0,
                  fontWeight:FontWeight.bold,
                )
            ),
            SizedBox(height:30.0),
            Row(
              children: <Widget>[
                  Icon(
                    Icons.email,
                    color:Colors.grey[400],
                  ),
                  SizedBox(width:10.0),
                  Text('wasimakram@gmail.com',
                    style:TextStyle(
                      color:Colors.grey[400],
                      fontSize:18.0,
                      letterSpacing:1.0,
                    )
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}