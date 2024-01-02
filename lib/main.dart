
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon/Otp_Screen.dart';
import 'package:hair_salon/firebase_options.dart';
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: Text("SKIP",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                       decoration:TextDecoration.underline,
                        decorationColor:Colors.red,
                        decorationThickness: 2,
                      )),
                      onPressed: (){},
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    height: 400,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('image/screen1.png'),
                      fit: BoxFit.none,
                    ),
                  ),
                ),
                SizedBox(width: double.infinity,height: 30,),
                Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -23,
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          height: 50,
                          width: 100,
                          child: Icon(Icons.people,size: 50,)
                      ),

                    ),
                    Container(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(25),
                        height: 260,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.call),
                                  hintText: "Enter Mobile Number",
                                ),
                              ),
                              SizedBox(width: 30,height: 20,),

                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.indigoAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  fixedSize: Size(300, 50)
                                ),
                                child: Text("Countinue",style: TextStyle(
                                  fontSize: 20,
                                ),),
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context)=>Otp_screen()
                                  )
                                  );
                                },
                              ),
                              SizedBox(width: 30,height: 20,),
                              Center(child: Column(
                                children: [
                                  Text("By continuing you are agree to our"),
                                  Text("Terms & Conditions and Privacy Policy")
                                ],
                              ))
                            ],
                        ),
                      ),
                    ),
                  ),
                  ]
                )
              ],
            ),
          ),
        ),
      );
  }
}

