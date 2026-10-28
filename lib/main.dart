import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',

      home: const MyHomePage(title: 'Notes App'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        title: Text(" My Notes App"),
        centerTitle: true,
        actions:[
          IconButton(
            icon: const Icon(Icons.settings),onPressed: (){},
          ),
        ],
      ),

      body:

         Column(
        children: [
          Center(
            child:  Container(
              height: 100,
              width: 400,
              color: Colors.pinkAccent,
              child:Center(child: Text("Buy Groceries",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold))),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.lightGreen,
            child: Center(child: Text("Read Books",style:TextStyle(fontSize: 20,color: Colors.black,fontWeight:FontWeight.bold )),
            )
            ),
          ),

          Container(
            height: 100,
            width: 400,
            color: Colors.lightBlueAccent,
            child: Center(child: Text("Clean Code",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.brown,
              child: Center(child: Text("Learn Flutter",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              color: Colors.purple,
              child: Center(child: Text("project 1.1",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 60,
                width: 200,
                child: OutlinedButton(child: Text('click me',style: TextStyle(color: Colors.pink),),onPressed: (){print('outlined button');},)),
          ),
               ],
      ),
        
           drawer: Drawer(),
       );
  }
}
