import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = "Click";
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Carbon Footprint Tracker 3.0"),
        ),

        body: Center(
          child: ElevatedButton(
            //onPressed is a property of ElevatedButton such that the contents inside its body happen once its respective ElevatedButton widget is clicked
            onPressed: (){
              setState((){
                buttonName = "Button has been clicked";
              }
              );
            }, 
            child: Text(buttonName) 
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
             BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home
                )
              ),
              BottomNavigationBarItem(
                label: "Settings",
                icon: Icon(
                  Icons.settings,
                  color: Colors.pink,
                  size: 22,
                  )
                ),
          ],
          //highlights corresponding navigation bar item
          currentIndex: currentIndex,
          onTap: (int index){
            setState((){
              currentIndex = index;
            }
            );

          },
          ),


      ),//Scaffold 
    );//MaterialApp
  }
}