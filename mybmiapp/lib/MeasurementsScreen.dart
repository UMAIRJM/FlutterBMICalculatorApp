import 'package:flutter/material.dart';
import 'package:mybmiapp/Dashboard.dart';

class MeasurementsScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    void buttonFuntion(){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return Dashboard();
      }));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Measurements'),
        backgroundColor: Colors.blue,

      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('This  is my Measurement screen',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: buttonFuntion, 
              child: Text('next')),
        ]),
      ),
    );
  }
}