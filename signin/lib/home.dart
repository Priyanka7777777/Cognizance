import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'main.dart';



class MyLogin extends StatefulWidget{
     const MyLogin({Key? key}):super(key:key);
      @override
      _MyLoginState createState()=>_MyLoginState();}
      class _MyLoginState extends State<MyLogin>{
       
      @override
      Widget build(BuildContext context){
        return Scaffold(
          backgroundColor:Colors.grey[200],
        appBar:AppBar(
        title: Text("Home "),
     ) ,
        body:Padding(padding: const EdgeInsets.all(16.0),
            child:SingleChildScrollView(
              child:Column(
              children:<Widget>[Image.asset("asset.jpg",fit: BoxFit.cover,),
            SizedBox(
              height:20,
            ),
             Text("Hello, How are You?",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold), 
             ),
              
             SizedBox(
              height:20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration:
                InputDecoration(hintText: "Enter something here"),

              ),

            ),
             
            Row(
              children: <Widget>[
               const Text('I want to go out from Homepage?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>MyApp()),
                     );
                    //signup screen
                  },
                )  
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],


               ),
              
            ),
        ),
        );
        
  
           
              
             
            
          
              

          
        
        

       
       
    
    
        
      
      
      
      }
  }  

  
      
      
      
  
