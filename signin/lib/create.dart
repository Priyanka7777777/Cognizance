import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import './home.dart';
class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() =>  _MyRegisterState();
}

class  _MyRegisterState extends State<MyRegister > {
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            image:DecorationImage(image:AssetImage('asset.jpg'),fit:BoxFit.cover
           ) ),
child:Scaffold(
  backgroundColor:Colors.transparent,
  body:Stack(
children:[
  Container(
    padding:EdgeInsets.only(left:35,top:30),
    child:Text('Create Account' ,style:TextStyle(color:Colors.white,fontSize:33),
    ),

  ),
 SingleChildScrollView(

child:Container(
  padding:EdgeInsets.only(
    top:MediaQuery.of(context).size.height*0.5,
    right:35,
    left:35),
  child:Column(
    children:[
      TextField(
        decoration:InputDecoration(
          fillColor:Colors.grey.shade100,
          filled:true,
          hintText:'First Name' ,
        border:OutlineInputBorder(
          borderRadius:BorderRadius.circular(10) )
     ) ),
     SizedBox(
      height:30,
     ),
      TextField(
        obscureText:true,
        decoration:InputDecoration(
          fillColor:Colors.grey.shade100,
          filled:true,
          hintText:'Last Name' ,
        border:OutlineInputBorder(
          borderRadius:BorderRadius.circular(10) )
     
      ),
    ),


    SizedBox(
      height:30,
     ),
      TextField(
        obscureText:true,
        decoration:InputDecoration(
          fillColor:Colors.grey.shade100,
          filled:true,
          hintText:'Password' ,
        border:OutlineInputBorder(
          borderRadius:BorderRadius.circular(10) )
     
      ),
    ),

SizedBox(
      height:30,
     ),
      TextField(
        obscureText:true,
        decoration:InputDecoration(
          fillColor:Colors.grey.shade100,
          filled:true,
          hintText:'Email' ,
        border:OutlineInputBorder(
          borderRadius:BorderRadius.circular(10) )
     
      ),
    ),


     SizedBox(
       height:40,
       ),
       
     Row(
              children: <Widget>[
               
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>MyLogin()),
                     );
                    //signup screen
                  },
                )  
              ],
      
     
   ),
          ],
  

  ),
  ),
    )
    ],
        ),
      ),
      );
      
      }
  } 
