  import 'package:flutter/material.dart';
import 'package:mybmiapp/MeasurementsScreen.dart';

  class WelcomeScreen extends StatelessWidget{
    var name = '';

    var textFieldController = TextEditingController();
    @override
    Widget build(BuildContext context){
      void myButtonOperation(){
        var params = textFieldController.text.toString();
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return MeasurementsScreen(params);
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
                Icon(Icons.fitness_center,size: 100,color:Colors.blue),  
                SizedBox(height:30),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(150),
                    border: Border.all(
                      width:1,
                      color: Colors.black,
                    
                    ),
                    
                  ),
                  child:Padding(
                    padding: EdgeInsets.only(left: 10,right:8,top:4),
                    child:  TextField(
                  // keyboardType: TextInputType.datetime,
                  
                  controller: textFieldController,
                  style: TextStyle(fontSize: 20),
                  decoration:InputDecoration(
                    border: InputBorder.none,
                    hintText: "Please Enter your Name",
                    hintStyle: TextStyle(fontSize: 20) ,                
                  ),
                  ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: myButtonOperation, 
                  child: Text('Next',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                )
              ],
            )

        ),
        ),
      );
    }
  }