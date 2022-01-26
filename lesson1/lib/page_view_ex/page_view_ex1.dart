import 'package:flutter/material.dart';
import 'package:lesson1/grid_ex/gallery_ob.dart';
import 'package:lesson1/grid_ex/grid_view_builder_ex.dart';
import 'package:lesson1/list_view_ex/list_view_ex.dart';
import 'package:lesson1/list_view_ex/list_view_ex1.dart';

class PageViewEx1 extends StatefulWidget {
  @override
  _PageViewEx1State createState() => _PageViewEx1State();
}

class _PageViewEx1State extends State<PageViewEx1> {
  @override

  var pageController=PageController(viewportFraction: 0.8);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageViewEx"),
        actions: [
          IconButton(
            onPressed: (){
              pageController.jumpToPage(3);
            }, 
            icon: Icon(Icons.image_search)
          )
        ],
      ),

      body: PageView(
        controller: pageController,
        onPageChanged: (val){
          print(val);
        },
        scrollDirection: Axis.horizontal, 
        physics: ClampingScrollPhysics(),
        
        children: galleries.map((gal) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
                        child: Column(
                children: [
                  Expanded(
                    child: Image.asset(gal.image, fit: BoxFit.cover,)
                  ),
                  SizedBox(height: 10),
                  Text(
                    gal.name, 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          );
        }
        ).toList()
          // GridViewBuilderEx(),
          // ListViewEx(),
          // ListViewEx1()
        
      ),
      
    );
  }
}