import 'package:flutter/material.dart';

import 'card_portrait.dart';

//widget with list of portrait cards
Widget listCardPortrait(List<Map<String, dynamic>> data){
  return SizedBox(
    height: 176.0,
    child: ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index)=> cardPortrait(
        context,
        data[index]['imageURL'],
        data[index]['title'],
      ),
      itemCount: data.length,
    ),
  );
}