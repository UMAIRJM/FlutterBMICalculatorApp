import 'package:flutter/material.dart';
import 'package:mybmiapp/Dashboard.dart';

class MeasurementsScreen extends StatelessWidget{
  var userName = '';
  MeasurementsScreen(var useName){
    this.userName = useName;
  }
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
            Text('Welcome $userName',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: buttonFuntion, 
              child: Text('next')),
        ]),
      ),
    );
  }
}