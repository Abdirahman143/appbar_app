import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{ runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
           backgroundColor: Colors.teal,
        appBar:  AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Colors.green[500],
          leading: IconButton(icon:Icon(Icons.menu), color: Colors.white,onPressed: (){print('pressed');}) ,
          actions: <Widget>[
            IconButton(icon:Icon(Icons.notifications_none), color:Colors.white54,),
            IconButton(icon:Icon(Icons.search), color: Colors.white54,)
          ],
          elevation: 20.0,
          titleSpacing: 20.0,

        ),

        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('images/bashir2.png')

              ),
              SizedBox(
                height: 10.0,
              ),
              Text('Bashir Abdi',
              style: TextStyle(
                fontFamily:'Pacifico',
                color: Colors.white,
                fontWeight:  FontWeight.bold,
                fontSize: 16.0,
                letterSpacing: 1.5,
              ),
              ),
              SizedBox(
                height: 10.0,
              ),

              Text('Flutter Developer',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 14,
                  color: Colors.teal.shade900,
                  fontWeight:  FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),

              Card(
                color: Colors.white,

                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),

               // padding: EdgeInsets.all(10.0),
                child: ListTile(
                    leading: Icon(
                      Icons.add_call,
                      color: Colors.teal,
                    ),


                 title:Text('+254700816533',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.teal.shade900,
                        fontWeight: FontWeight.bold,

                      ),
                    ),

                ),

              ),


              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                //padding: EdgeInsets.all(10.0),
                child:  ListTile(

                  leading:Icon(
                    Icons.email,
                    color: Colors.teal.shade900,

                  ),

                  title: Text('bashirAbdi@gmail.com',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.teal.shade900,
                      fontWeight: FontWeight.bold,

                  ),
                ),


              ),

          ),
  ]
        ),

      ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.create),
          foregroundColor: Colors.grey[500],
          backgroundColor: Colors.black54,
          highlightElevation: 20.0,
          elevation: 20.0,
          shape: CircleBorder(),

        ),

      )
  );


  }
}
