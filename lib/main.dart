import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:workout_management/new_work_list.dart';
import 'package:workout_management/work_list.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(

      ),

      home: MyHomePage(title: "Workout Planner"),
    );
  }
}


class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}



class _MyHomePageState extends State<MyHomePage> {

  @override


  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title: Text(widget.title,
                    style: TextStyle(fontFamily: 'OpenSans'),
                   ),
        centerTitle: true,
      ),



      body: Container(

        child: Padding(

          padding: const EdgeInsets.all(10.0),


          child: Column(


            children: <Widget> [


              GridView.count(

                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                shrinkWrap: true,

                children: <Widget>[

                  Material(
                    color: Colors.teal[100],
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => work_list()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text("He'd have you all unravel at the"),
                      ),
                    ),

                  ),

                  Material(
                    color: Colors.teal[200],
                    child: InkWell(
                      onTap: (){
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Heed not the rabble'),
                      ),
                    ),
                  ),

                  Material(
                    color: Colors.teal[300],
                    child: InkWell(
                      onTap: (){

                      },
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Sound of screams but the'),
                      ),
                    ),
                  ),

                  Material(
                    color: Colors.teal[400],
                    child: InkWell(
                      onTap: (){

                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Who scream'),
                    ),
                     ),
                  ),

                  Material(
                    color: Colors.teal[500],
                    child: InkWell(
                      onTap: (){

                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Revolution is coming...'),

                      ),
                    ),

                  ),

                  Material(
                    color: Colors.teal[600],
                    child: InkWell(

                      onTap: (){

                      },

                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Revolution, they...'),
                      ),
                    ),

                  ),


                ],



              ),
              Center(
                child: RaisedButton(
                  child: Text("新しいトレーニングを追加"),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => new_work_list()),
                    );

                  },
                ),
              )

            ],


          ),
        )

          ),
        //This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
