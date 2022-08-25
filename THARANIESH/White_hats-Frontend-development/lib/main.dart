import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:white_hats/Authentication/Login.dart';
import 'package:white_hats/Authentication/demo.dart';
import 'package:white_hats/Authentication/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:white_hats/Authentication_service.dart';
import 'package:firebase_database/firebase_database.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue, unselectedWidgetColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: signIn(),
    );
  }
  
     class logIn extends StatelessWidget{
      @override
      Widget build(BuildContext Context)=>Scaffold(
        body:StreamBuilder<User?>(
          stream:FirebaseAuth.instance.authStateChanges(),
            builder:(context,snapshot){
              if (snapshot.connectionState ==ConnectionState.waiting)
              { return Center(child:CircularProgressIndicator());
              }
              else if (snapshot.hasError){
                return Center(child:Text('something went wrong !'));

              } 
              
  

              else if(snapshot.hasData){
      return signIn();
      }
                else{
                return logIn();
      }

      },


      ),
    );

  }
}
