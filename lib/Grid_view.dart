import 'package:flutter/material.dart';
import 'main.dart';

class GridV extends StatefulWidget {
  const GridV({super.key});

  @override
  State<GridV> createState() => _GridVState();
}

class _GridVState extends State<GridV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Gride View App'),
      ),
      // body: GridView.count(
      //   crossAxisCount: 4,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: List.generate(20, (index){
      //     return Card(
      //       elevation: 20,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(30)
      //       ),
      //       color: Colors.red,
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(Icons.phone_android,size: 60,color: Colors.white,),
      //           SizedBox(height: 5,),
      //           Text('Cash out',
      //           style: TextStyle(
      //             fontSize: 20,
      //             color: Colors.white,
      //           ),),
      //         ],
      //       ),
      //     );
      //   })
      //
      //   // children: [
      //   //   Container(
      //   //     color: Colors.red,
      //   //     height: 200,
      //   //     width: 200,
      //   //   ),
      //   //   Container(
      //   //     color: Colors.green,
      //   //     height: 200,
      //   //     width: 200,
      //   //   ),
      //   //   Container(
      //   //     color: Colors.lightGreen,
      //   //     height: 200,
      //   //     width: 200,
      //   //   ),
      //   //   Container(
      //   //     color: Colors.amber,
      //   //     height: 200,
      //   //     width: 200,
      //   //   )
      //   // ],
      // ),
      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 4,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //   ),
      //   itemCount: 20,
      //   itemBuilder: (context,index){
      //     return Card(
      //       elevation: 20,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadiusGeometry.circular(20),
      //       ),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(Icons.phone_android,color: Colors.white,),
      //           Text('Cash out',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 20,
      //           ),
      //           ),
      //         ],
      //       ),
      //     );
      //   },
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 20,
         itemBuilder: (context,index){
            return Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone_android,size: 60,color: Colors.white,),
                  SizedBox(height: 5,),
                  Text('Cash out',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                ],
              ),
            );
          })
    );
  }
}
