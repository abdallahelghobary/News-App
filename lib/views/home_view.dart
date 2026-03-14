import 'package:flutter/material.dart';
import 'package:news_app/widget/add_note_bottom_sheet.dart';
import 'package:news_app/widget/categorys_list_view.dart';
import 'package:news_app/widget/news_list_view_builder.dart';

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
            const Text(
              'ُElGhobary',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.blueGrey,
            context: context,
            builder: (context) {
              return AddNoteBottemSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),

      body: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
             child: 
             CustomScrollView(
              slivers: [
                  SliverToBoxAdapter(child: CategorysListView()),

                  SliverToBoxAdapter(child: SizedBox(height: 20,),
                  ), 

                  NewsListViewBuilder() ,
              ],
    ),
      ),
    );
  }
}
