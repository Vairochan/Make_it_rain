import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Makeitrain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new MakeitrainState();
  }

}

class MakeitrainState extends State<Makeitrain>{
  @override
  int _money = 0;

  void _rainmoney(){
    setState(() {
      _money = _money + 100;

    });

  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make it Rain"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        margin: EdgeInsets.fromLTRB(100, 50, 100, 100),
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text("Get rich!",
              style: new TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.lightGreen,
              ),
              ),
            ),
            new Expanded(child: Center(
              child: new Text('\$$_money',
              style: new TextStyle(
                color:  _money > 2000 ? Colors.greenAccent: Colors.green,
                fontWeight: FontWeight.w800,
                fontSize: 40,
              ),
              ),
            ),
            ),
            new Expanded(child: Center(
              child: new FlatButton(
                  onPressed: _rainmoney,
                  child: new Container(
                    width: 250,
                    height: 60,
                    color: Colors.lightGreen,
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Text("Let it rain",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),),

                    )
                  ),)
            ))
            ],
        ),
      ),
    );
  }
}