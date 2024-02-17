import 'dart:async';
import 'package:mybmiapp/WelcomeScreen.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen>  createState()=>_SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  double _width = 360;
  double _height = 700;
  double _width1 = 360;
  double _height1 = 700;
  
  int counter= 0;
  bool box1Visibility = true;
  bool box2Visibility = false;
  bool box3Visibility = false;
  
  
  void initState(){
      super.initState();
       TimerFunction();
    
    }
    void TimerFunction(){
      
      Timer(Duration(seconds: 3),(){
          counter++;
          if(counter == 2){
              box1Visibility = false;
              box2Visibility = true;
            }
          else if (counter ==3){
            _width1 = 560;
            _height1 = 900;
          }
          else if(counter == 4){

            box2Visibility = false;
            box3Visibility = true;
          }
          else if(counter == 5){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> WelcomeScreenState()));
     

          }
          _width = 20;
          _height = 20;
          
          setState(() {
            
            
          });
          if(counter<5){
            TimerFunction();
          }
          
      });

    }
    
    @override
    Widget build(BuildContext context){

      return Scaffold(
        body:Stack(
          children: [
            Center(
          child: Visibility(
            visible: box3Visibility,
            child: Container(
           child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
               Text('Welcome to BMI calculator',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
               SizedBox(height: 5,),
               Icon(Icons.fitness_center,size: 80,),
            ] ,
          
           ) 
          ))
          
        ),
          
          Center(
          child: Visibility(
            visible: box2Visibility,
            child:AnimatedContainer(
          curve: Curves.easeInBack,
          duration:Duration(seconds: 2),
          width: _width1,
          height:_height1,
          
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/images/bmiImage2.jpg'),
              fit:BoxFit.cover,
            ),
            border:Border.all(width: 1,color: Colors.black)
            
            
          ),
          
          ), 
          )
          
        ),
          Center(
          child: Visibility(
            visible: box1Visibility,
            child: AnimatedContainer(
          curve: Curves.easeInBack,
          duration:Duration(seconds: 2),
          
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            // color: Colors.green,
             borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/images/bmiImage1.jpg'),
              fit:BoxFit.cover,
            ),
            border:Border.all(width: 1,color: Colors.black)
            
            
          ),
          
          ),)
        ),
          ],
        )
        

      );
    }



}

