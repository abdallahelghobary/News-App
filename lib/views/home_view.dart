import 'package:flutter/material.dart';
import 'package:news_app/widget/categorys_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const
            Text('News ',style: TextStyle(color: Colors.black),),
            Text('Cloud',style: TextStyle(color: Colors.orange),),

          ],
        ),
      ),

      body:
       CategorysListView(),



       ); 
  }
}


