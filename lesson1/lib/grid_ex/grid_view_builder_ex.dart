import 'package:flutter/material.dart';

class GridViewBuilderEx extends StatelessWidget {
  const GridViewBuilderEx({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridViewBuilder')
      ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ), 
        itemBuilder: (context, index){
          return Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            color: Colors.green,
                      child: Column(
              children: [
                Expanded(
                                  child: Image.asset(
                    'images/cartoon.jpg', fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Text('${index+1}'),
                SizedBox(height: 10),
              ],
            ),
          );
        },
        itemCount: 10,
      ),
      
    );
  }
}