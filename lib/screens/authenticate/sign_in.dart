import 'package:ehealthsg/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:ehealthsg/shared/constants.dart';
import 'package:ehealthsg/shared/loading.dart';
class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  bool loading = false;
  //text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        elevation: 0.0,
        title: Text('Sign in to E-Health@SG'),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){
              widget.toggleView();
            },
            icon: Icon(Icons.person),
            label: Text('Register'),
            )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height:20.0),
              TextFormField(
                decoration:  textInputDecoration.copyWith(hintText: 'Email'),
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (val){
                  setState(() => email = val);
                },
              ),
              SizedBox(height:20.0),
              TextFormField(
                decoration:  textInputDecoration.copyWith(hintText: 'Password'),
                validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long': null,
                obscureText: true,
                onChanged: (val){
                  setState(() => password = val);
                },
              ),
              SizedBox(height:20.0),
              RaisedButton(
                color: Colors.red,
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                   if(_formKey.currentState.validate()){
                     setState(() => loading = true);
                    dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                    if(result == null) {
                      setState(() {
                        error = 'Invalid Email or Password';
                        loading = false;
                      } );
                    }
                  }
                }, 
                ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}