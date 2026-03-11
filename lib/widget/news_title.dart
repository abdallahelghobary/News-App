import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({super.key,required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
          articleModel.image??'https://english.ahram.org.eg/Media/News/2023/1/24/41_2023-638101895357368950-736.jpg',
            fit: BoxFit.fill,
            height: 200,
            width: double.infinity,
            errorBuilder: (context, error, stackTrace) => 
             Image.network(
          articleModel.image??'https://english.ahram.org.eg/Media/News/2023/1/24/41_2023-638101895357368950-736.jpg',
            fit: BoxFit.fill,
            height: 200,
            width: double.infinity,
            
          )
        )
        ),
  
        const SizedBox(height: 12),
         Text( articleModel.title,
          
        //  'مرتضي منصور : فيريرا اعتذر عن تدريب الزمالك ومدربان نفاضل بينهما وأهالي عزبه حتاته يرفضون هذا القرار   Filgool.com',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
         Text( articleModel.description??
          'كشف مرتضي منصور رئيس مجلس اداره نادي الزمالك اعتذار البرتغالي جوزفالدو فيريرا عن عدم تدريب الفريق في الوقت الحالي وأهالي عزبه حتاته وضواحيها الكرام يرفضون ويطالبون باستقرار الفريق والحفاظ علي فيريرا ',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Color(0xFF757575), fontSize: 15),
        ),
      ],
    );
  }
}
