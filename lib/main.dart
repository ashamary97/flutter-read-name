import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(Home());
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  TextEditingController name = TextEditingController();
   String getname;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Display Name"),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20.0,right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                  hintText: "Enter a name",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20.0,),
              RaisedButton(
                color: Colors.pinkAccent,
                onPressed: (){
               setState(() {
                 getname=name.text;
               });
                 j
              },
              child: Text("DISPLAY"),),
              Text(getname.toString(),
                style: TextStyle(fontSize: 30.0),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
