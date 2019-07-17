import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Basic List View Apps',
      home:  Scaffold(// this is for scroll listview
        appBar: AppBar(title: Text("List View "),),
        body: getListView(),
      ),
    );
  }

  Widget getListView(){

    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscape"),
          subtitle: Text("Beatiful View !"),
          trailing: Icon(Icons.wb_sunny),

          onTap: (){
            debugPrint("Landscape tapped");
          },
        ),
        ListTile(
          leading: Icon(Icons.laptop_chromebook),
          title: Text("Windows"),
          onTap: (){
            debugPrint("Windows tapped");
          },
        ),

 ListTile(
          leading: Icon(Icons.phone),
          title: Text("Phone Call"),
   onTap: (){
     debugPrint("Phone Call");
   },
        ),

        Padding
          (padding: EdgeInsets.all(15.0),
          child:  Text(" Yet Another Text element in List"),

        ),
        Container(color: Colors.green, height: 50.0,)

      ],

    );

    return listView;

  }


}