import 'package:flutter/material.dart';
import 'package:untitled18/mdeldata.dart';

class griddata extends StatefulWidget {




  late modeldata data;
  late int index;
  griddata({required this.data,required this.index});
  @override
  State<griddata> createState() => _griddataState();
}

class _griddataState extends State<griddata> {
void onitemclick(int index){print(index.toString());
}
void btnindex(int index){
  print(widget.index);
}
@override

  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
 child: GestureDetector(
   onTap: ()=>btnindex(widget.index),
   child: Container(
   height: 40,
   decoration: BoxDecoration(

     color: Colors.blue,
     borderRadius: BorderRadius.only(
         bottomRight: Radius.circular(20),
         topRight: Radius.circular(20)
     ),

   ),
   child: Row(

       children: [
         SizedBox(width: 20,),
         Expanded(
           flex: 1,
           child:Text(widget.data.progrees.toString(),style: TextStyle(color: Colors.white),),

         ),
         Expanded(
           flex:9,
           child:Text(widget.data.name,style: TextStyle(color: Colors.white),), )
       ]


   ),
 ),
)
 ),
    );
  }
}







