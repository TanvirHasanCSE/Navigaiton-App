import 'package:flutter/material.dart';
import 'main.dart';
import 'Login_page.dart';
class ListV extends StatefulWidget {
  final name;
  const ListV({super.key,required this.name});

  @override
  State<ListV> createState() => _ListVState();
}

class _ListVState extends State<ListV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('List vied card'),
      ),
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                trailing: Icon(Icons.delete_forever,color: Colors.red,),
                title: Text("Tanvir"),
                subtitle: Text(widget.name),
              ),
            );
          },
      ),
    );
  }
}
