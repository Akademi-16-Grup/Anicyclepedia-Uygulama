import 'package:flutter/material.dart';
import 'main.dart';
import 'home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: 
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
          color: Color.fromARGB(255, 151, 222, 196),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: 
                Column(
                  children: [
                    Text("LOGO",style: TextStyle(fontSize: 50),),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: (){
                      
                      Navigator.of(context).pushNamed('/home');
                    }, child: Text("Öğrenmek İçin Tıkla"),
                    style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            )
                          )
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ),
      );
    
  }
}
