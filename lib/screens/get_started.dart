import 'dart:html';

import 'package:book_tracker/screens/loginScreen.dart';
import 'package:book_tracker/widgets/input_decoration.dart';
import 'package:book_tracker/widgets/loginForm.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GetStarted extends StatelessWidget {
  // const GetStarted({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CircleAvatar(
        backgroundColor: HexColor('f5f6f8'),
        child: Column(
          children: [
            Spacer(),
            Text('book tracker',style: Theme.of(context).textTheme.headline3.copyWith(
              color: Colors.blue,
            ),
            
            ),
            SizedBox(

            ),
             Text('Read and change yourself',style: TextStyle(
              color: Colors.black87,
              fontSize: 29,),
              
              
              ),
              SizedBox( height: 50,),
              TextButton.icon(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: HexColor('#69639f'),
                  textStyle: TextStyle(
                    fontSize: 18,
                  )


                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage())
                  );

                }, icon: Icon(Icons.login_rounded), label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('sign in to get started'),
                )),
              Spacer(),
 
          ],


        ),

      ) ,
    );
  }
}



