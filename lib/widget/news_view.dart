
import 'package:flutter/material.dart';
import 'package:news_app/widget/categorys_list_view.dart';
import 'package:news_app/widget/new_list_view.dart';

class NewsView  extends StatelessWidget 
{

const NewsView({super.key});


@override
  Widget build(BuildContext context) {
  return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
             child: 
             CustomScrollView(
              slivers: [
                  SliverToBoxAdapter(child: CategorysListView()),

                  SliverToBoxAdapter(child: SizedBox(height: 20,),
                  ),

                 NewsListView()
              //  SliverToBoxAdapter (child: NewsListView()),

              ],
             ),
  );

  

  }
}

