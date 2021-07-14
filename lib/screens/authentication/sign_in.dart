import 'package:flutter/material.dart';
import 'package:ninja_brew/services/auth.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[200],
        elevation: 0.0,
        title: Text("Sign in to Brew Crew"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
        child: ElevatedButton(
          child: Text('Sign-In Anonymously'),
          onPressed: () async{
            dynamic result = await _auth.signInAnon();
            if(result){
              print('Sign In Complete');
              print(result);
            }else{
              print("nhi hua");
            }
          },
        ),
      ),
    );
  }
}
