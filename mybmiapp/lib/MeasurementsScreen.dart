import 'package:flutter/material.dart';
import 'package:mybmiapp/Dashboard.dart';

class MeasurementsScreenState extends StatefulWidget{
  var  params;
  
  MeasurementsScreenState(var param){
    this.params = param;
  }
  @override
  State<MeasurementsScreenState> createState()=> MeasurementsScreen(params);
}


class MeasurementsScreen extends State<MeasurementsScreenState>{
  var userName = '';
  var weightText = 'weight in pounds';
  var heightTextController = TextEditingController();
  var weightTextController = TextEditingController();
  var heightTextController2 = TextEditingController();
  void radioButtonFunction(int? value){
    
    radioButtonGroupValue= value;
    if(radioButtonGroupValue == 1){
      cmVicibility = true;
      inchesVisibility = false;
    }
    else{
      cmVicibility = false;
      inchesVisibility = true;
    }
    setState(() {
      
    });
  }
  void radioButtonFunction1(int? value){
    radioButtonGroupValue1 = value;
    if (radioButtonGroupValue1 == 3){
      weightText = 'weight in pounds';
    }
    else{
      weightText = "weight in Kgs";
    }
    setState(() {
      
    });
  }

  MeasurementsScreen(var useName){
    this.userName = useName;
  }
  int ?radioButtonGroupValue = 1;
  int ?radioButtonGroupValue1 = 3;

  bool inchesVisibility = false;
  bool cmVicibility = true;
  bool errorMessage = false;
  //group value is for radio button in same group if radio button are in same group mean one of them is selected
  //in time so  we need to provide same group value to them so if one is selected  all other should be not selected.
  @override
  Widget build(BuildContext context){
    void buttonFuntion(){
      var _height = heightTextController.text.toString();
      var _weight = weightTextController.text.toString();
      var _height2 = heightTextController2.text.toString();
      
      if(_height != '' && _weight != '' && ((_height  != '' && _height2!='' )|| radioButtonGroupValue == 1) ){
        Navigator.push(context, MaterialPageRoute(builder: (context){
        return Dashboard();
      }));

      }
      else{
        heightTextController = TextEditingController();
        weightTextController = TextEditingController();
        heightTextController2= TextEditingController();        
        errorMessage = true;
        setState(() {});
      }
      
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Measurements'),
        backgroundColor: Colors.blue,

      ),
      body:
      Stack( 
      children:[ 
        Column(
          children:[
            Container(
              margin: EdgeInsets.only(
                left: 50,
                top: 20,

              ),
              decoration: BoxDecoration(
                border:Border(
                  bottom: BorderSide(width: 1),
                )
              ),
              child: Text('Welcome, $userName',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
          ],
        ),

        Center(
        
        child:SingleChildScrollView(
          child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children:[
           
            Text('Please Enter below measurements to proceed',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            
            SizedBox(height: 20,),
            Visibility(
              visible: errorMessage,
              child:  Text('Please  fill below measurements to process',style: TextStyle(fontSize: 20,color: Colors.red),),
           
            ),
            Container(
              // color: Colors.blue,
              width:300,
              // height: 10,
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Stack(
                      children: [
                        Visibility(
                          visible: cmVicibility,
                          child:Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: Colors.black,

                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: TextField(
                          cursorColor: Colors.black,
                        style: TextStyle(fontSize: 20,color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Height in cm',
                          hintStyle: TextStyle(fontSize: 20),
                        ),
                        controller: heightTextController,
                      ),
                        )
                    ), 
                          ),
                        Visibility(
                          visible: inchesVisibility,
                          child:Row(
                            children: [
                              Expanded(
                            flex: 5,
                            child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: Colors.black,

                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: TextField(
                          cursorColor: Colors.black,
                        style: TextStyle(fontSize: 20,color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Feet',
                          hintStyle: TextStyle(fontSize: 20),
                        ),
                        controller: heightTextController,
                      ),
                        )
                    ),
                    
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            flex: 5,
                            child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: Colors.black,

                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: TextField(
                          cursorColor: Colors.black,
                        style: TextStyle(fontSize: 20,color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'inches',
                          hintStyle: TextStyle(fontSize: 20),
                        ),
                        controller: heightTextController2,
                      ),
                        )
                    ),
                          )
                            ],
                          ) 
                          ),
                      ],
                    ),
                    ),
                  Expanded(
                    flex: 4,
                    child:Row(
                      children: [
                        SizedBox(width: 10,),
                        Container(
                          width: 20,
                         child:RadioListTile(value: 1, groupValue: radioButtonGroupValue, onChanged: radioButtonFunction),
  
                         
                         ),
                         SizedBox(width: 6,),
                         Text('cm'),
                         SizedBox(width: 10,),
                         Container(
                          width: 20,
                         child: 
 RadioListTile(value: 2, groupValue: radioButtonGroupValue, onChanged: radioButtonFunction),
  
                         
                         ),
                         SizedBox(width: 6,),
                         Text('Feets'),
            
                      ],
                    ),
                    ),
                ],
              ),
            ),

            SizedBox(height: 30,),
            Container(
              // color: Colors.blue,
              width:300,
              // height: 10,
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Stack(
                      children: [
                        Visibility(
                          visible: true,
                          child:Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: Colors.black,

                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: TextField(
                          cursorColor: Colors.black,
                        style: TextStyle(fontSize: 20,color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: weightText,
                          hintStyle: TextStyle(fontSize: 20),
                        ),
                        controller: weightTextController,
                      ),
                        )
                    ), 
                          ),
                        
                      ],
                    ),
                    ),
                  Expanded(
                    flex: 4,
                    child:Row(
                      children: [
                        SizedBox(width: 10,),
                        Container(
                          width: 20,
                         child:RadioListTile(value: 3, groupValue: radioButtonGroupValue1, onChanged: radioButtonFunction1),
  
                         
                         ),
                         SizedBox(width: 6,),
                         Text('lgs'),
                         SizedBox(width: 10,),
                         Container(
                          width: 20,
                         child: 
 RadioListTile(value: 4, groupValue: radioButtonGroupValue1, onChanged: radioButtonFunction1),
  
                         
                         ),
                         SizedBox(width: 6,),
                         Text('Kgs'),
            
                      ],
                    ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
              onPressed: buttonFuntion, 
              child: Text('next',style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              ),
              
            ),
             
        ]),
        ),
      ),
  ]    ),
    );
    
  }
}