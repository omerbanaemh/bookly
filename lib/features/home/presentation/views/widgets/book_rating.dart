import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,

      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 14),
        SizedBox(width: 6.3),

        Text("$rating",style: Styles.textStyle16,),
        SizedBox(width: 5),
        Opacity(
          opacity: .5,
          child: Text(
            "($count)",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
