import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
 import './home.dart';
 import './create.dart';
import 'authentication_service.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   runApp(MyApp()
  );

}
 
class MyApp extends StatelessWidget {
 
 
  static const String _title = 'Flutter App';

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
      title: "Flutter App",
      
      
       
    
      theme:ThemeData(
      primarySwatch: Colors.purple,
       ),
       home:AuthenticationWrapper(),
    )
    );
  }
}
 
 class AuthenticationWrapper extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var firebaseUser=context.watch<User>();
    if(firebaseUser!= null){
      return Text("Signed in");

    }
    return Text("not signedin");

  }
 }
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
 final emailController=TextEditingController();
      final passwordController =TextEditingController();
      @override
      void dispose(){
        emailController.dispose();
        passwordController.dispose();
        super.dispose();
      }
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'FutterApp',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),

                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
                
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
               
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'email',
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',),
            ),


            

            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                 
                  context.read<AuthenticationService>().signIn(email: emailController.text,
                   password: passwordController.text,);
                    Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyLogin() ),
                     );
                  },
                )
            ),
      
            
            Row(
              children: <Widget>[
               const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  MyRegister() ),
                     );
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        )
        );
        

     
  }
}