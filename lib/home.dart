import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage('assets/images/allanimals.jpg'),
          fit: BoxFit.contain,
          alignment: Alignment.topCenter
          ),
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: const 
                Text(
                  'Hayvanlar ve Türleri Hakkında',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.pink,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 210,),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [

                      Text(
                        "Hayvanlar sinir sistemleri ve yiyeceklerini takip etme veya yakalama yeteneği ile donatılmış karmaşık, çok hücreli organizmalardır. Altı geniş kategoriye ayrılabilir. İşte altı ana hayvan grubu.",
                        style: TextStyle(fontSize: 20),
                      ),
    
                      SizedBox(height: 15,),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      SizedBox(
                        width: 170,
                        child: ElevatedButton(onPressed: (){
                          Navigator.of(context).pushNamed('/memeli');
                        }, child: Text("Memeliler",style: TextStyle(fontSize: 23),),
                         style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black,
                               ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 10,),

                       SizedBox(
                        width: 170,
                        child: 
                           ElevatedButton(
                          onPressed: () {
                          Navigator.of(context).pushNamed('/omurgasiz');
                          },
                          child: Text("Omurgasızlar",style: TextStyle(fontSize: 23),),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black,
                               ),
                              ),
                            ),
                          ),
                        ),
                      ),
                          
                        ],
                      ),


                      Row(  
                        mainAxisAlignment: MainAxisAlignment.center,                    
                        children: [
                      SizedBox(
                        width: 170,
                        child: ElevatedButton(onPressed: (){
                          Navigator.of(context).pushNamed('/amfibi');
                        }, 
                        child: Text("Amfibiler",style: TextStyle(fontSize: 23),),
                         style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black,
                               ),
                              ),
                            ),
                          ),),
                      ),

                      SizedBox(width: 10,),

                      SizedBox(
                        width: 170,
                        child: ElevatedButton(onPressed: (){
                          Navigator.of(context).pushNamed('/balik');
                        }, 
                        child: Text("Balıklar",style: TextStyle(fontSize: 23),),
                         style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 247, 195, 42)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black,
                               ),
                              ),
                            ),
                          ),
                        ),
                      ),

                        ],
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [  

                      SizedBox(
                        width: 170,
                        child: ElevatedButton(onPressed: (){
                          Navigator.of(context).pushNamed('/kus');
                        }, 
                        child: Text("Kuşlar",style: TextStyle(fontSize: 23),),
                         style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 36, 195, 158)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black,
                               ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 10,),

                      SizedBox(
                        width: 170,
                        child: ElevatedButton(onPressed: (){
                          Navigator.of(context).pushNamed('/surungen');
                        }, 
                        child: Text("Sürüngenler",style: TextStyle(fontSize: 23),),
                         style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 163, 68, 33)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black,
                               ),
                              ),
                            ),
                          ),
                        ),
                      ),


                        ],
                      ),

                    ],
                  ),
                  ),

              )
            ],
          ),
        ),
      ),
    );
    
  }
}
