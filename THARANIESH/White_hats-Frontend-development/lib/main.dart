import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:white_hats/Authentication/Login.dart';
import 'package:white_hats/Authentication/demo.dart';
import 'package:white_hats/Authentication/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:white_hats/Authentication_service.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   runApp(MyApp()
  );

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
    providers:[ 
      Provider<AuthenticationService>(
        create:(_)=> AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(create: (context)=>context.read<AuthenticationService>().authStateChanges),

    ],
    child: MaterialApp(
        debugShowCheckedModeBanner:false,
         theme:ThemeData(
      primarySwatch: Colors.blue,
       ),
       home:AuthenticationWrapper(),
    )
    );
  }
}
class AuthenticationWrapper extends StatelessWidget{
const AuthenticationWrapper({
  Key? Key,
}): super(key:Key);
  @override
  Widget build(BuildContext context) {
    final firebaseUser=context.watch<User>();
    if(firebaseUser!= null){
      return Text("Signed in");

    }
    return Text("not signedin");

  }
 }