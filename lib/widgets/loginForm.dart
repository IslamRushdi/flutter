import 'package:book_tracker/widgets/input_decoration.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
    @required GlobalKey<FormState> formkey,
    @required TextEditingController emailTextController,
    @required TextEditingController passwordTextController,
  }) : _formkey = formkey, _emailTextController = emailTextController, _passwordTextController = passwordTextController, super(key: key);

  final GlobalKey<FormState> _formkey;
  final TextEditingController _emailTextController;
  final TextEditingController _passwordTextController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              validator: (value) {
                value.isEmpty ? 'please enter the email' :null;
              },
              controller: _emailTextController,
              decoration: buildInputdecoration(label: 'enter email', hintText: 'john@me.com')
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              validator: (value) {
                value.isEmpty ? 'please enter the password' :null;
              },
              controller: _passwordTextController,
              obscureText: true,
              decoration: buildInputdecoration(label: 'password', hintText: '')
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(onPressed: () {
              
            if(_formkey.currentState.validate()){
              
            }

          }, child: Text('Sign in!'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)
              ),
              backgroundColor: Colors.amber,
              textStyle: TextStyle(
                fontSize: 18,
                
              )
            ),
          )

        ],

      ),
    );
  }
}