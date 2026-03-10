import 'package:flutter/material.dart';
import 'package:news_app/widget/new_list_view.dart';
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
            const Text(
              'News ',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      body:  
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
             child: 
             CustomScrollView(

              slivers: [
                  SliverToBoxAdapter(child: CategorysListView()),

                  SliverToBoxAdapter(child: const SizedBox(height: 20,),
                  ),

                 NewsListView()
              //  SliverToBoxAdapter (child: NewsListView()),

              ],
             )
             
            //  ListView(
            //  children:
            //  [
            //           CategorysListView(),
            //           const SizedBox(height: 20,),
            //            NewsListView(),
            //  ]
            //     ),

           ),
    );
  }
}

