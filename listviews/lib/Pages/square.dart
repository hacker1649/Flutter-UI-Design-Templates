import 'package:flutter/material.dart';
import 'package:listviews/Classes/posts.dart';
import 'package:dotted_border/dotted_border.dart';

class MySquare extends StatelessWidget {
  final Post post;
  MySquare({required this.post,});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0.0,right: 0.0,top: 0.0,bottom: 10.0,),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              leading: DottedBorder(
                color: Colors.white10,
                strokeWidth: 3,
                borderType: BorderType.Circle,
                dashPattern: [1,0],
                child: ClipOval(
                  child: Image.asset(post.avatar,fit: BoxFit.cover,width: 30,height: 30,),
                ),
              ),
              title: Text(post.username,style: TextStyle(
                color: Colors.white,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.bold,
                fontSize: 14.0,),
              ),
              subtitle: Text(post.location,style: TextStyle(
                color: Colors.white,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.normal,
                fontSize: 14.0,),
              ),
              trailing: Icon(Icons.more_vert_rounded,color: Colors.white,),
            ),
            Container(
              child: Image.asset(post.img,fit: BoxFit.cover,),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top: 0.0,bottom: 0.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/icons/heart.png',color: Colors.white,width: 25,height: 25,),
                      SizedBox(width: 7,),
                      Image.asset('assets/icons/bubble-chat.png',color: Colors.white,width: 25,height: 25,),
                      SizedBox(width: 7,),
                      Image.asset('assets/icons/send.png',color: Colors.white,width: 25,height: 25,),
                    ],
                  ),
                  Image.asset('assets/icons/save-instagram.png',color: Colors.white,width: 25,height: 25,),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top: 0.0,bottom: 0.0,),
              child: Text(post.blurText.toString() + ' likes',style: TextStyle(
                color: Colors.white,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.normal,
                fontSize: 14.0,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top: 0.0,bottom: 0.0,),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  children: [
                    TextSpan(text: post.username,style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PT Sans',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,),
                    ),
                    TextSpan(text: ' ' + post.text,style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PT Sans',
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,),
                    ),
                  ]
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0,right: 5.0,top: 0.0,bottom: 0.0,),
              child: Text('View all ' + post.messages.toString() + ' comments',style: TextStyle(
                color: Colors.grey[600],
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.normal,
                fontSize: 14.0,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




