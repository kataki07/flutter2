import 'package:flutter/material.dart';
import 'package:untitled18/actgrid.dart';
import 'package:untitled18/fragment/fragaboutus.dart';
import 'package:untitled18/fragment/fraghome.dart';
import 'package:untitled18/fragment/fragmain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  void btnsign(){
if(username.text=="ali"&&password.text=="1234") {
  Navigator.push(context, MaterialPageRoute(builder: (context) => actgrid(),));
  print("hi");
}
  }
  late final List<Widget> widgetcaptoion=[

    Column(


      mainAxisAlignment:MainAxisAlignment.center,

      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [

            DecoratedBox(decoration: BoxDecoration(

                color: Colors.blue
            )),
            Text("FORM",)
          ],),
        Row(
          children: [
            SizedBox(width: 70,),
            Expanded(child: TextField(

              controller:username ,
            )),

            SizedBox(width: 70,),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 70,),
            Expanded(child: TextField(
              controller: password,
            )),
            SizedBox(width: 70,),
          ],
        ),
        SizedBox(height: 50,),
        Row(
          children: [

            Expanded(
              child: Container(

                margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
                padding:EdgeInsets.fromLTRB(20, 10, 20, 10),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),

                  color: Color.fromARGB(200, 200, 200, 40),
                ),
                child: Text("log in",textAlign: TextAlign.center),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(


              child: GestureDetector(
                onTap: btnsign,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 70, 0),

                  padding:EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(200, 200, 200, 40),
                  ),
                  child: Text("sign in",textAlign: TextAlign.center,),
                ),
              ),

            )
          ],
        )
      ],
    ),
    fragmain(),

    fragaboutus()
  ];
int current=0;
  void btnitem(index){
    setState(() {
      current=index;

    });
  }
  @override

  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: Colors.white24,

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'about us',
          ),
        ],
        currentIndex: current,
        onTap: btnitem,
      ),

      body:widgetcaptoion[current],


    );
  }
}
