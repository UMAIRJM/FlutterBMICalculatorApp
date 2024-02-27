import 'package:mongo_dart/mongo_dart.dart';

class  MongoConnection{
   MongoConnection(){
     mongoDbConnectionFunction();
  }
  static var exception;
  static var exception2;
  
  void  mongoDbConnectionFunction () async{
    final db = Db('mongodb+srv://umairkmehmood789:umair789@cluster0.pkhdli3.mongodb.net/BmiCalulator?retryWrites=true&w=majority');
     
    try{
    await db.open();
    }catch(e){
      exception = e;
    }
    try{
      var collection = db.collection('DietPlans');
    await collection.insert({'name':'UmairMehmood'});
    await  db.close();
    }
    catch(e){
      exception2 = e;
    }
    
  
  }
}