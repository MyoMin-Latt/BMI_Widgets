import 'package:flutter/material.dart';
import 'package:lesson1/grid_ex/gallery_ob.dart';

class GridViewExample extends StatefulWidget {
  @override
  _GridViewExampleState createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView With GalleryOb')
      ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ), 
        itemBuilder: (context, index){
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            clipBehavior: Clip.antiAlias,
            color: Colors.black12,
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                Expanded(child: Image.asset(
                  galleries[index].image, fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Text(galleries[index].name),
                SizedBox(height: 10),
              ],
            ),
          );
        },
        itemCount: galleries.length,
      ),
      
    );
  }
}