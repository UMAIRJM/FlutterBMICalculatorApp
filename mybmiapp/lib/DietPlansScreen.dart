import 'package:flutter/material.dart';
import 'package:mybmiapp/MongoConnection.dart';

class DietPlanScreen extends StatefulWidget{
  static  const String routeName = '/DietPlans';
  @override
  State<DietPlanScreen> createState()=>DietPlanState();

}

class DietPlanState extends State<DietPlanScreen>{
    MongoConnection obj =new  MongoConnection();
    DietPlanState(){
       obj.mongoDbConnectionFunction();
   
    }
    var expect =MongoConnection.exception;
    var expect1 = MongoConnection.exception2;
    
  
 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet Plans',style: TextStyle(color: Colors.white),),
      ),
      body: Text('This is my diet plan screeen hahahaha  $expect $expect1'),
    );
  }
}