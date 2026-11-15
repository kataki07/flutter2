import 'package:flutter/material.dart';
class fraghome extends StatefulWidget {



  @override
  State<fraghome> createState() => _fraghomeState();
}

class _fraghomeState extends State<fraghome> {


  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
    child: Expanded(child:Container(
      decoration: BoxDecoration(color: Colors.green),
      child: Text("home"),
    )
 

    ),
      ),
    );
  }
}
