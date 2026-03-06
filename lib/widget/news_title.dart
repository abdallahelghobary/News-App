import 'package:flutter/material.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
              image: NetworkImage(
                'https://english.ahram.org.eg/Media/News/2023/1/24/41_2023-638101895357368950-736.jpg'
                //'https://www.safha1.com/UploadCache/libfiles/1/9/800x450o/926.jpg',
              ),
              fit: BoxFit.fill,
            ),
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
    
        const Text('كشف مرتضي منصور رئيس مجلس اداره نادي الزمالك اعتذار البرتغالي جوزفالدو فيريرا عن عدم تدريب الفريق في الوقت الحالي وأهالي عزبه حتاته وضواحيها الكرام يرفضون ويطالبون بالحفاظ علي  االفرير والحفاظ علي فيرير ',
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
