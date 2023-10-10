import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Firstscreen(),debugShowCheckedModeBanner: false,);
  }
}
class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  bool isSwitched=false;
  bool isSwitched1=false;
  bool isSwitched2=false;
  bool isSwitched3=false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Center(child: Text("Switch",style: TextStyle(fontWeight: FontWeight.bold),)),),
    body: Column(
      children: [
        ListTile(leading: Icon(Icons.lightbulb,color: Colors.yellowAccent,),
          title: Text("IOS switch",style: TextStyle(fontWeight: FontWeight.bold,)),
        trailing:

        Switch(value: isSwitched, onChanged: (bool newvalue){
          setState(() {
            isSwitched=newvalue;
          });
        },
          activeColor: Colors.deepOrange,
          inactiveThumbColor: Colors.blue,
          splashRadius: 25,
          activeTrackColor: Colors.purpleAccent,
          inactiveTrackColor: Colors.greenAccent,
          activeThumbImage:AssetImage('img_1.png'),
          inactiveThumbImage: AssetImage('img_2.png'),
        ),),


         ListTile(
           leading:Icon(Icons.lightbulb,color: Colors.yellowAccent,) ,
           title: Text("IOS switch",style: TextStyle(fontWeight: FontWeight.bold)),
         trailing:
        Switch(value: isSwitched1, onChanged: (bool newvalue){
          setState(() {
            isSwitched1=newvalue;
          });
        },

          activeColor: Colors.pink,
          inactiveThumbColor: Colors.cyanAccent,
          splashRadius: 25,
          activeTrackColor: Colors.indigo,
          inactiveTrackColor: Colors.redAccent,
          activeThumbImage:AssetImage('img_1.png'),
          inactiveThumbImage: AssetImage('img_2.png'),

        ),),

        ListTile(
          leading: Icon(Icons.lightbulb,color: Colors.yellowAccent, ),
          title: Text("Adaptive switch",style: TextStyle(fontWeight: FontWeight.bold)),
        trailing:
        Switch(value: isSwitched2, onChanged: (bool newvalue){
          setState(() {
            isSwitched2=newvalue;
          });
        },

          activeColor: Colors.green,
          inactiveThumbColor: Colors.orangeAccent,
          splashRadius: 25,
          activeTrackColor: Colors.yellowAccent,
          inactiveTrackColor: Colors.purple,
          activeThumbImage:AssetImage('img_1.png'),
          inactiveThumbImage: AssetImage('img_2.png'),

        ),),

        ListTile(
          leading: Icon(Icons.lightbulb,color: Colors.yellowAccent,),
          title: Text("Image switch",style: TextStyle(fontWeight: FontWeight.bold)),
        trailing:
        Switch(value: isSwitched3, onChanged: (bool newvalue){
          setState(() {
            isSwitched3=newvalue;
          });
        },

          activeColor: Colors.cyanAccent,
          inactiveThumbColor: Colors.pink,
          splashRadius: 25,
          activeTrackColor: Colors.redAccent,
          inactiveTrackColor: Colors.yellowAccent,
          activeThumbImage:AssetImage('img_1.png'),
          inactiveThumbImage: AssetImage('img_2.png'),

        ),
        ),

        ],
    ),
    );
  }
}

