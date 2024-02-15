  import 'package:flutter/material.dart';
import 'package:mybmiapp/MeasurementsScreen.dart';

  class WelcomeScreen extends StatelessWidget{
    
    @override
    Widget build(BuildContext context){
      void myButtonOperation(){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return MeasurementsScreen();
        }));
    }

      return Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.blue,
          title: Text('Wecolme'),
          
        ),
        body: Center(
          child:Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('This is my Welcome screen',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ElevatedButton(
                  onPressed: myButtonOperation, 
                  child: Text('Next',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ],
            )

        ),
        ),
      );
    }
  }