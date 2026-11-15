
import 'package:flutter/material.dart';
import 'package:untitled18/griddata/griddata.dart';
import 'package:untitled18/mdeldata.dart';

class actgrid extends StatefulWidget {



  @override
  State<actgrid> createState() => _actgridState();
}

class _actgridState extends State<actgrid> {
  List<modeldata> grid=[];

  @override
  initState(){
    modeldata tmp1=modeldata("ali",1);
    modeldata tmp2=modeldata("arash",2);
    modeldata tmp3=modeldata("koorush",3);
    modeldata tmp4=modeldata("saman",4);
    modeldata tmp5=modeldata("sima",5);

    grid.add(tmp1);
    grid.add(tmp2);
    grid.add(tmp3);
    grid.add(tmp4);
    grid.add(tmp5);
    print(grid.length.toString());
  }

  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child:GridView.count(
scrollDirection: Axis.vertical,
            childAspectRatio: 20,
            shrinkWrap: true,
            crossAxisCount: 1,

              children: List.generate(grid.length, (index) {
              return  griddata(data: grid[index],index: index,);
              })


          ),
      ),
    );
  }
}
