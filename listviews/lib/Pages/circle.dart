import 'package:flutter/material.dart';
import 'package:listviews/Classes/stories.dart';
import 'package:dotted_border/dotted_border.dart';

class MyCircle extends StatelessWidget {
  final Story story;
  MyCircle({required this.story});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0,bottom: 0.0,),
      child: Container(
        child: Column(
          children: [
            DottedBorder(
              color: Colors.white10,
              strokeWidth: 4,
              borderType: BorderType.Circle,
              dashPattern: [1,0],
              child: ClipOval(
                child: Image.asset(story.avatar,fit: BoxFit.cover,width: 62,height: 62,),
              ),
            ),
            Text(story.text,style: TextStyle(
              color: Colors.white,
              fontFamily: 'PT Sans',
              fontWeight: FontWeight.normal,
              fontSize: 14.0,),
            ),
          ],
        ),
      ),
    );
  }
}






