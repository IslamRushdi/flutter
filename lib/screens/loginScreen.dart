import 'package:book_tracker/widgets/createAccountForm.dart';
import 'package:book_tracker/widgets/loginForm.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Loginpage extends StatefulWidget {
 

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool isCreatedAccountClicked = false;
  final TextEditingController _emailTextController =TextEditingController();

  final TextEditingController _passwordTextController =TextEditingController();
  final _formkey =GlobalKey<FormState>(

  );
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child:Container(
                color: HexColor('#b9c2d1'),
              )
            ),
            Text('Sign in!',
            style: Theme.of(context).textTheme.headline5,),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                SizedBox(
                  width: 300,
                  height: 300,
                  child: isCreatedAccountClicked != true? LoginForm(formkey: _formkey, emailTextController: _emailTextController, passwordTextController: _passwordTextController):
                  createAccountForm(formkey: _formkey, emailTextController: _emailTextController, passwordTextController: _passwordTextController) ,
                )
                 ,
                 TextButton.icon(onPressed: () {
                   setState(() {
                     if(!isCreatedAccountClicked){
                     isCreatedAccountClicked = true;
                   }else isCreatedAccountClicked = false;
                   });
                 },
                  style: TextButton.styleFrom(
                    primary: HexColor('#fb5b28'),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic
                    )
                  ),
                  icon: Icon(Icons.portrait_outlined), label: Text(isCreatedAccountClicked ? 'Already have an account':'create account')),

              ],

            ),

            Expanded(
              flex: 2,
              child:Container(
                color: HexColor('#b9c2d1'),
                
              )
            )

          ],




        ),
      ),

    );
  }
}