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
          color: Color.fromARGB(255, 221, 195, 166),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: 
                Column(
                  children: [
                    Text
                    (
                      "Anicyclepedia",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 171, 56, 10)),
                    ),

                    SizedBox(height: 10,),

                    Image(image: AssetImage("assets/images/logo.png"),

                    ),
                    SizedBox(height: 10,),


                    SizedBox(
                      width: 200,
                      height: 45,
                      child: ElevatedButton(onPressed: (){
                        Navigator.of(context).pushNamed('/home');
                      }, child: Text("Öğrenmek İçin Dokun",style: TextStyle(color: Color.fromARGB(255, 234, 227, 227)),),
                      style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 78, 115, 19)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              )
                            )
                          ),
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
