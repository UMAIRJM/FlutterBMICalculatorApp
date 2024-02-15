import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget{
  @override
  State<Dashboard> createState()=> _DashboardState();
}

class _DashboardState extends State<Dashboard>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.blue,

      ),
      body: Center(
        child: Text('This is my Dashboard Screen',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
      ),
    );
  }
}