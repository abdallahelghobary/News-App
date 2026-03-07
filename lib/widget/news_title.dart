import 'package:flutter/material.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child:
              Image.network(
               // 'https://english.ahram.org.eg/Media/News/2023/1/24/41_2023-638101895357368950-736.jpg'
               'https://www.safha1.com/UploadCache/libfiles/1/9/800x450o/926.jpg',
               // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBcSd2a7YgEBjD2BGt7yhvFOwtwv_kBamVIw&s'
              fit: BoxFit.fill,
              height: 200,
              width: double.infinity,
              ),
            
        ),
        const SizedBox(height: 12),
        const Text(
          'مرتضي منصور : فيريرا اعتذر عن تدريب الزمالك ومدربان نفاضل بينهما وأهالي عزبه حتاته يرفضون هذا القرار   Filgool.com',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        const Text('كشف مرتضي منصور رئيس مجلس اداره نادي الزمالك اعتذار البرتغالي جوزفالدو فيريرا عن عدم تدريب الفريق في الوقت الحالي وأهالي عزبه حتاته وضواحيها الكرام يرفضون ويطالبون باستقرار الفريق والحفاظ علي فيريرا ',
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Color(0xFF757575),
        fontSize: 15
        ),
        ),
      ],
    );
  }
}
