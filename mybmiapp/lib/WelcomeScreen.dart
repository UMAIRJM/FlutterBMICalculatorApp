  import 'package:flutter/material.dart';
import 'package:mybmiapp/MeasurementsScreen.dart';

class WelcomeScreenState extends StatefulWidget{
  @override
  State<WelcomeScreenState> createState()=> WelcomeScreen();
}






class WelcomeScreen extends State<WelcomeScreenState>{
    var name = '';
    bool errorVisibility = false;
    var textFieldController = TextEditingController();
    @override
    Widget build(BuildContext context){
      void myButtonOperation(){
        
        var params = textFieldController.text.toString();
        if(params != ''){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return MeasurementsScreenState(params);
        }));
        }else{
          errorVisibility = true;
          setState(() {
            
          });
        }
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
                Text('BMI calculator',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,),),
                SizedBox(height: 10,),
                Icon(Icons.fitness_center,size: 100,color:Colors.blue),  
                SizedBox(height:30),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
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
                Visibility(
                  visible: errorVisibility,
                  child:Text('Please enter name to move forward',style: TextStyle(fontSize: 15,color: Colors.red,fontWeight: FontWeight.bold),),),
                SizedBox(height: 40),
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