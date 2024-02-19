import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget{
  var _height = '';
  var _weight = '';
  var username = '';
  Dashboard(var _height,var _weight,var username){
    this._height = _height;
    this._weight = _weight;
    this.username = username;
  }
  @override
  State<Dashboard> createState()=> _DashboardState(_height,_weight,username);
}

class _DashboardState extends State<Dashboard>{
  var _height = '';
  var _weight = '';
  var username = '';
  _DashboardState(var _height,var _weight,var username){
    this._height = _height;
    this._weight = _weight;
    this.username = username;

  }
  


  @override
  Widget build(BuildContext context){
  double bmi ;
  var bmiStatus = '';
  double he = double.parse(_height);
  double we = double.parse(_weight);
  double squareValue = he*he;
  bmi = we/squareValue;
  Color boxBgColor = Colors.green;
  Color shadowColor= Colors.green;
  if(bmi<18){
    boxBgColor = Colors.red;
    bmiStatus = 'low';
    shadowColor = Colors.red;
  }
  else  if(bmi>18 && bmi<25){
    boxBgColor = Colors.green;
    shadowColor = Colors.green;
    bmiStatus = 'normal';
  }
  else if(bmi>25){
    boxBgColor = Colors.yellow.shade900;
    shadowColor  = Colors.yellow.shade900;
    bmiStatus = 'high';
  }
  
  var bmiText  = bmi.toStringAsFixed(2);
  var weightText = double.parse(_weight).toStringAsFixed(2);
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $username ',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,

      ),
      body:SingleChildScrollView(
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            
          child: Center(
           child: Card(
            shadowColor: shadowColor,
            elevation: 20,
            child: Container(
              
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: boxBgColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child:Column(
                children: [
                  Expanded(
                    flex: 3,
                    child:Container(
                      //color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('$username Statistics',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                          Container(
                            margin: EdgeInsets.only(left:10),
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                  width: 1,
                                  color: Colors.black
                                )
                              ),
                            ),
                            child: Padding(
                              padding:EdgeInsets.all(5),
                              child: Text('$bmiStatus',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                            ),
                          ),
                        ],
                      ),
                      )),
                    Expanded(
                    flex: 7,
                    child:Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            //color: Colors.red,
                            child: Card(
                              elevation: 10,
                              shadowColor: Colors.blue,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.height,size: 40,),
                                   Text('Your height',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                
                                  Text('$_height m',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                            )),
                           Expanded(
                          flex: 3,
                          child: Container(
                            //color: Colors.green,
                            child: Card(
                              elevation: 10,
                              shadowColor: Colors.blue,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.line_weight,size: 40,),
                                    Text('Your weight',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                
                                  Text('$weightText kgs',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                            )),
                           Expanded(
                          flex: 3,
                          child: Container(
                            //color: Colors.blue,
                            child: Card(
                              elevation: 10,
                              shadowColor: Colors.blue,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.health_and_safety,size: 40,),
                                  Text('Your BMI',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                  Text('$bmiText',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                            )),
                      ],
                    ),
                    )
                ],
              ),
              ),
          ),
          ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            //  color: Colors.green,
            ),
            height: 130,
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                   // color: Colors.red,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child:Card(
                        
                        child:Center(
                          child:  InkWell(
                            onTap: (){},
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Icon(Icons.calculate),
                            Text('BMI Calculator'),
                          ],
                        ),
                          )
                        ),
                      elevation: 10,
                      shadowColor: Colors.blue,
                    ),
                  )
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    //color: Colors.red,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child:Card(
                        
                        child:Center(
                          child:  InkWell(
                            onTap: (){},
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Icon(Icons.calculate),
                            Text('Weight Calculator'),
                          ],
                        ),
                          )
                        ),
                      elevation: 10,
                      shadowColor: Colors.blue,
                    ),
                  )
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    //color: Colors.red,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child:Card(
                        
                        child:Center(
                          child:  InkWell(
                            onTap: (){},
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Icon(Icons.calculate),
                            Text('Height converter'),
                          ],
                        ),
                          )
                        ),
                      elevation: 10,
                      shadowColor: Colors.blue,
                    ),
                  )
                  ),
                ),
              ],
            ),

          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 400,
            height: 30,
            child: Text('Checkout our Diet Plans',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

          ),
          InkWell(
            onTap: (){},
            child: Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //color: Colors.green,
            ),
            height: 90,
            width: 400,
            child: Card(
              shadowColor: Colors.blue,
              elevation: 20,
              child: Center(
               child: Text('Diet Plan for UnderWeights',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              )
            ),

          ),
          ),InkWell(
            onTap: (){},
            child: Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //color: Colors.green,
            ),
            height: 90,
            width: 400,
            child: Card(
              shadowColor: Colors.blue,
              elevation: 20,
              child: Center(
               child: Text('Diet Plan for Overweight',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              )
            ),

          ),
          ),InkWell(
            onTap: (){},
            child: Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //color: Colors.green,
            ),
            height: 90,
            width: 400,
            child: Card(
              shadowColor: Colors.blue,
              elevation: 20,
              child: Center(
               child: Text('General Diet Plan',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              )
            ),

          ),
          )
        ],
      ),
      ),
    );
  }
}